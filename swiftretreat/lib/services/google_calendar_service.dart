import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/calendar/v3.dart';
import 'package:http/http.dart' as http;
import '../models/booking_model.dart';

/// Handles Google Calendar sign-in and event creation for bookings.
class GoogleCalendarService {
  GoogleCalendarService._();
  static final GoogleCalendarService _instance = GoogleCalendarService._();
  factory GoogleCalendarService() => _instance;

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: <String>[CalendarApi.calendarEventsScope],
  );

  Future<GoogleSignInAccount?> _ensureSignedIn() async {
    final current = await _googleSignIn.signInSilently();
    if (current != null) return current;
    return _googleSignIn.signIn();
  }

  Future<void> addBookingEvent(Booking booking) async {
    final account = await _ensureSignedIn();
    if (account == null) {
      throw Exception('Google sign-in was cancelled');
    }

    final authHeaders = await account.authHeaders;
    final client = _GoogleAuthClient(authHeaders);
    final calendar = CalendarApi(client);

    final event = Event(
      summary: 'Stay at ${booking.hotel.name}',
      location: booking.hotel.location,
      description:
          'Guests: ${booking.guests}\nContact: ${booking.guestName} (${booking.guestPhone})',
      start: EventDateTime(
        dateTime: booking.checkIn.toUtc(),
        timeZone: 'UTC',
      ),
      end: EventDateTime(
        dateTime: booking.checkOut.toUtc(),
        timeZone: 'UTC',
      ),
      reminders: EventReminders(
        useDefault: false,
        overrides: <EventReminder>[
          EventReminder(method: 'popup', minutes: 24 * 60),
          EventReminder(method: 'popup', minutes: 60),
        ],
      ),
    );

    await calendar.events.insert(event, 'primary');
  }
}

class _GoogleAuthClient extends http.BaseClient {
  _GoogleAuthClient(this._headers);
  final Map<String, String> _headers;
  final http.Client _client = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers.addAll(_headers);
    return _client.send(request);
  }
}
