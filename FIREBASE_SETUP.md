# Firebase Setup Instructions for SwiftRetreat

## ✅ What's Already Done

1. **Firebase packages installed:**
   - `firebase_core` - Core Firebase functionality
   - `firebase_auth` - User authentication
   - `cloud_firestore` - NoSQL database
   - `firebase_storage` - File storage

2. **Code Implementation:**
   - `FirebaseAuthService` created for authentication
   - Login screen updated to use Firebase Auth
   - Register screen updated to use Firebase Auth
   - Profile screen updated to fetch user data from Firestore
   - Auth state management with `AuthWrapper`
   - Automatic login/logout handling

## 🔧 Setup Steps (IMPORTANT - Complete These Now!)

### ⚠️ CURRENT STATUS: App will compile but Firebase won't work until you complete these steps

I've created a placeholder `firebase_options.dart` file so your app can compile, but you MUST replace it with real Firebase configuration.

### Step 1: Get Your Firebase Configuration

**Option A: Using Firebase Console (Easiest)**

1. Go to [Firebase Console](https://console.firebase.google.com/)
2. Select your project (or create one if you haven't)
3. Click the **Web icon** (</>) to add a web app
4. Register your app (name it "SwiftRetreat")
5. Copy the configuration values shown
6. Open `lib/firebase_options.dart` in your project
7. Replace all `'YOUR_API_KEY_HERE'` placeholders with your actual values from Firebase Console

**Example of what you'll see in Firebase Console:**
```javascript
const firebaseConfig = {
  apiKey: "AIzaSyC...",
  authDomain: "swiftretreat.firebaseapp.com",
  projectId: "swiftretreat",
  storageBucket: "swiftretreat.appspot.com",
  messagingSenderId: "123456789",
  appId: "1:123456789:web:abc123"
};
```

**Option B: Using Firebase CLI (Advanced)**

First install Firebase CLI:
```bash
npm install -g firebase-tools
```

Then run:
```bash
cd C:\Users\ADMIN\swiftretreat\SwiftRetreat-1\swiftretreat
flutterfire configure
```

This will automatically generate the correct `firebase_options.dart` file.

### Step 2: Enable Authentication

1. In Firebase Console → Your Project
2. Click "Authentication" in left sidebar  
3. Click "Get started"
4. Go to "Sign-in method" tab
5. Click "Email/Password"
6. Toggle "Enable"
7. Click "Save"

### Step 3: Create Firestore Database

1. In Firebase Console → Your Project
2. Click "Firestore Database" in left sidebar
3. Click "Create database"
4. Select "Start in test mode" (for development)
5. Choose a location (closest to your users)
6. Click "Enable"

### Step 5: Security Rules (Important!)

For production, update your Firestore security rules:

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    // Users can only read/write their own data
    match /users/{userId} {
      allow read, write: if request.auth != null && request.auth.uid == userId;
    }
    
    // Example for bookings
    match /bookings/{bookingId} {
      allow read, write: if request.auth != null;
    }
  }
}
```

## 🚀 How to Use

### Register a New User

1. Run the app
2. Click "Register"
3. Fill in:
   - Full Name
   - Email
   - Password (must meet requirements)
4. Click "Sign Up"
5. User will be created in Firebase Auth
6. User data will be stored in Firestore

### Login

1. Enter registered email and password
2. Click "Login"
3. After 5 failed attempts, password reset email will be sent

### User Data Structure in Firestore

```
users/{userId}
  - name: string
  - email: string
  - createdAt: timestamp
  - profileImage: string (optional)
```

## 📝 Next Steps for Full Integration

### 1. Store Bookings in Firestore

Create a `FirebaseBookingService`:

```dart
// lib/services/firebase_booking_service.dart
class FirebaseBookingService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  
  Future<void> createBooking({
    required String hotelId,
    required String hotelName,
    required DateTime checkIn,
    required DateTime checkOut,
    // ... other fields
  }) async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) throw Exception('Not logged in');
    
    await _firestore.collection('bookings').add({
      'userId': userId,
      'hotelId': hotelId,
      'hotelName': hotelName,
      'checkIn': Timestamp.fromDate(checkIn),
      'checkOut': Timestamp.fromDate(checkOut),
      'createdAt': FieldValue.serverTimestamp(),
      'status': 'pending',
    });
  }
  
  Stream<List<Map<String, dynamic>>> getUserBookings() {
    final userId = _auth.currentUser?.uid;
    if (userId == null) return Stream.value([]);
    
    return _firestore
        .collection('bookings')
        .where('userId', isEqualTo: userId)
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => {...doc.data(), 'id': doc.id})
            .toList());
  }
}
```

### 2. Store Hotels in Firestore

Instead of mock data, fetch hotels from Firestore:

```dart
Stream<List<Hotel>> getHotels() {
  return _firestore
      .collection('hotels')
      .snapshots()
      .map((snapshot) => snapshot.docs
          .map((doc) => Hotel.fromMap(doc.data()))
          .toList());
}
```

### 3. Image Upload with Firebase Storage

```dart
Future<String> uploadImage(File image) async {
  final userId = _auth.currentUser?.uid;
  final ref = FirebaseStorage.instance
      .ref()
      .child('users/$userId/profile.jpg');
  
  await ref.putFile(image);
  return await ref.getDownloadURL();
}
```

## 🐛 Troubleshooting

### Error: "firebase_options.dart not found"
- Run `flutterfire configure` command

### Error: "Invalid API key"
- Re-run `flutterfire configure`
- Make sure you selected the correct Firebase project

### Test mode expires after 30 days
- Update Firestore security rules for production

### Authentication errors
- Check Firebase Console → Authentication for enabled providers
- Check user is created in Authentication → Users tab

## 📚 Resources

- [Firebase Documentation](https://firebase.google.com/docs)
- [FlutterFire Documentation](https://firebase.flutter.dev/)
- [Firestore Security Rules](https://firebase.google.com/docs/firestore/security/get-started)
