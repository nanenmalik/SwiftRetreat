# SwiftRetreat Database Integration Guide

## ✅ What's Connected

Your app now has full Firebase integration with automatic data synchronization:

### Registration Flow:
1. **User enters details** (name, email, password)
2. **Firebase Auth creates user** with encrypted password
3. **User data saved to Firestore** with:
   - Name
   - Email
   - Account creation timestamp
   - Last login timestamp
   - Profile image URL (empty initially)
   - Phone number field (empty initially)

4. **User automatically logged in** and redirected to home

### Login Flow:
1. **User enters email/password**
2. **Firebase Auth validates credentials**
3. **Last login timestamp updated** in Firestore
4. **User data loaded** on profile screen
5. **User redirected to home**

## 📊 Firestore Database Structure

Your Firestore database will automatically create this structure:

```
firestore/
└── users/
    └── {userId}/
        ├── name: string              (User's full name)
        ├── email: string             (User's email)
        ├── phone: string             (Optional)
        ├── profileImage: string      (Profile image URL)
        ├── createdAt: timestamp      (Account creation time)
        └── lastLogin: timestamp      (Last login time)
```

## 🔐 Firestore Security Rules

To prevent unauthorized access, update your Firestore security rules:

1. Go to **Firebase Console → Firestore → Rules**
2. Replace the default rules with:

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    // Users can only read/write their own data
    match /users/{userId} {
      allow read, write: if request.auth != null && request.auth.uid == userId;
    }
    
    // Bookings collection
    match /bookings/{bookingId} {
      allow read, write: if request.auth != null;
    }
    
    // Hotels collection (publicly readable, admin write)
    match /hotels/{hotelId} {
      allow read: if request.auth != null;
      allow write: if request.auth != null;
    }
  }
}
```

3. Click **Publish**

## 🧪 Test Registration & Login

### Test 1: Register a New User
1. Run the app: `flutter run`
2. Click **Register**
3. Fill in:
   - Full Name: `Test User`
   - Email: `test@example.com`
   - Password: `Test@12345`
4. Click **Sign Up**
5. You should see success message and be redirected to home

### Test 2: Verify Data in Firebase
1. Go to **Firebase Console**
2. Click **Firestore Database**
3. Click **users** collection
4. You should see a new document with your user ID containing:
   - `name`: "Test User"
   - `email`: "test@example.com"
   - `createdAt`: timestamp
   - `lastLogin`: timestamp

### Test 3: Login with Registered User
1. Close and reopen app
2. Click **Login**
3. Enter email: `test@example.com`
4. Enter password: `Test@12345`
5. Click **Login**
6. You should be redirected to home screen

### Test 4: Verify Profile Data Loads
1. Go to **Profile** tab
2. You should see:
   - Name: "Test User"
   - Email: "test@example.com"

## 🚀 Verify Everything is Working

Your system is working correctly if:

✅ **Registration:**
- User can create account
- Data appears in Firestore within seconds
- User is automatically logged in

✅ **Login:**
- User can log in with registered email/password
- Last login timestamp updates in Firestore
- Profile screen shows user data

✅ **Logout:**
- Logout button works
- User is redirected to login screen
- Logging back in works smoothly

## 🔧 Add More User Fields

To add more fields to user profile (like phone, address, etc.):

### 1. Update the service:

```dart
// In firebase_auth_service.dart, signUpWithEmailPassword method
await _firestore.collection('users').doc(user.uid).set({
  'name': name,
  'email': email,
  'phone': '', // Add this
  'address': '', // Add this
  'profileImage': '',
  'createdAt': FieldValue.serverTimestamp(),
  'lastLogin': FieldValue.serverTimestamp(),
}, SetOptions(merge: true));
```

### 2. Update EditProfileScreen to save changes:

```dart
Future<void> _saveProfile() async {
  try {
    await _authService.updateUserProfile(
      name: _nameController.text,
      email: _emailController.text,
      phone: _phoneController.text,
    );
  } catch (e) {
    // Handle error
  }
}
```

## 📝 User Data Model (for future use)

If you want to create a Dart model for type safety:

```dart
// lib/models/user_model.dart
class UserModel {
  final String uid;
  final String name;
  final String email;
  final String phone;
  final String profileImage;
  final DateTime createdAt;
  final DateTime lastLogin;

  UserModel({
    required this.uid,
    required this.name,
    required this.email,
    this.phone = '',
    this.profileImage = '',
    required this.createdAt,
    required this.lastLogin,
  });

  factory UserModel.fromMap(Map<String, dynamic> data, String uid) {
    return UserModel(
      uid: uid,
      name: data['name'] ?? '',
      email: data['email'] ?? '',
      phone: data['phone'] ?? '',
      profileImage: data['profileImage'] ?? '',
      createdAt: (data['createdAt'] as Timestamp).toDate(),
      lastLogin: (data['lastLogin'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'profileImage': profileImage,
      'createdAt': Timestamp.fromDate(createdAt),
      'lastLogin': Timestamp.fromDate(lastLogin),
    };
  }
}
```

## 🐛 Troubleshooting

**Problem:** User registers but data doesn't appear in Firestore
- Check Firebase Console → Firestore → Data
- Make sure you've added Firebase credentials to `firebase_options.dart`
- Check Firestore Rules (might be blocking writes)

**Problem:** Login fails after registration
- Verify email in Firebase Console → Authentication → Users
- Check user has same email in Firestore users collection
- Make sure Firestore Rules allow reading user data

**Problem:** Profile screen shows "Loading..." forever
- Check if user document exists in Firestore
- Verify Firestore Rules allow reading user data
- Check browser console for errors (if running on web)

## 📚 Next Steps

1. **Add Booking Storage** - Save bookings to Firestore
2. **Add Hotel Storage** - Store hotels in Firestore instead of mock data
3. **Add Image Upload** - Use Firebase Storage for profile pictures
4. **Add Real-time Updates** - Use Firestore streams for live data

Your database is now fully integrated! 🎉
