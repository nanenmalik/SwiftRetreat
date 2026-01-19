import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:dash_chat_2/dash_chat_2.dart';

class ChatService {
  // TODO: Replace with your actual API key
  static const String _apiKey = 'AIzaSyC4tBvJfOaJucPVXneRUjLe4Sqp9LDq-mU';

  late final GenerativeModel _model;
  late final ChatSession _chat;

  final ChatUser currentUser = ChatUser(id: '0', firstName: 'User');
  final ChatUser geminiUser = ChatUser(
    id: '1',
    firstName: 'Swift Retreat AI',
    profileImage:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_R4S4j_-Ii4yXXo5eCYiwhO66hb0Ez9a1dQ&s', // Reusing the profile image from home screen as placeholder
  );

  List<ChatMessage> messages = [];

  ChatService() {
    _model = GenerativeModel(model: 'gemini-flash-latest', apiKey: _apiKey);
    _chat = _model.startChat();
  }

  Future<ChatMessage> sendMessage(ChatMessage message) async {
    messages.insert(0, message);

    try {
      final response = await _chat.sendMessage(Content.text(message.text));

      final text = response.text;
      if (text == null) {
        throw Exception('No response from API');
      }

      final botMessage = ChatMessage(
        user: geminiUser,
        createdAt: DateTime.now(),
        text: text,
      );

      messages.insert(0, botMessage);
      return botMessage;
    } catch (e) {
      throw Exception('Failed to send message: $e');
    }
  }
}
