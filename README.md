# 🏨 Swift Retreat – Hotel Booking Management System

## 📘 Project Proposal 

---

## 👥 Group Members

- **Adli Bin Wahid** (2211623)  
- **Nurul Nasreen Binti Abdul Malik** (2217464)  
- **Nur Amira Nabila Binti Mohd Ab Rahman** (2220682)

---

## 📌 Project Title

**Swift Retreat – Hotel Booking Management System**

---

## 📌 Project Video Proposal



---

## 🧠 Introduction

**Swift Retreat** is a customer-focused mobile application designed to simplify and automate the hotel reservation process while adhering to Shariah-compliant principles. The application directly addresses common customer issues like difficulty finding suitable accommodations and lack of real-time availability. Swift Retreat integrates Islamic values, enabling users to easily filter and book accommodations based on criteria such as modesty, family-friendly rooms, and optional amenities like prayer room access and halal-certified food services.
The application is built entirely using the Flutter framework, ensuring a fast, beautiful, and consistent user experience on both iOS and Android devices from a single codebase. 
Customers can intuitively browse and search for available rooms, utilize dynamic filtering for specific Shariah-compliant facilities, view high-quality images and details, and complete secure online reservations directly from their smartphones. Swift Retreat aims to enhance the hotel booking experience by providing a seamless, reliable, and culturally sensitive service for users seeking accommodations in line with Islamic values.


---

## 🎯 Objectives

The primary objectives of the proposed web application are:

1. Core Reservation Functionality:
-  To enable customers to effortlessly search and browse hotel rooms and packages in real-time, complete with up-to-date availability and pricing information.
-  To provide a secure and streamlined process for customers to complete and manage online reservations and payments directly within the mobile application.
2. Shariah-Compliance and Filtering:
-  To integrate specific filters and criteria that allow customers to easily select accommodations that align with Shariah-compliant principles (e.g., family-friendly options, access to segregated facilities, halal food availability).
-  To clearly present all necessary hotel details, amenities, and user reviews within the app to support informed booking decisions based on Islamic values.


---

## 🧍 Target Users

1. Muslim Travelers and Families:
-  Description: Individuals, couples, and large families (often traveling with children) who actively seek accommodations that uphold Islamic values.
-  Needs: Easy filtering for specific amenities like Halal-certified food services, availability of prayer mats/rooms, and privacy/modesty features (e.g., non-mixed facilities or private pool options).
-  Behavior: They value reliability, clear information, and the convenience of booking services that reduce the need to verify compliance after arrival.

2. Tech-Savvy Tourists:
-  Description: People of all backgrounds who prefer using mobile applications for travel logistics and expect a modern, fast, and feature-rich booking experience.
-  Needs: Real-time availability, secure in-app payment processing, high-quality images and room details, and reliable cross-platform performance (Flutter provides this).
-  Behavior: They are comfortable performing all transaction steps (search, booking, payment, management) directly on their smartphones.

🌐 Secondary Target Audience
1. Global Visitors to Muslim-Majority Regions (and vice-versa):
-  Description: Tourists visiting countries or areas where Shariah-compliant services are prevalent or expected, who need a dedicated tool to find suitable lodging quickly.
-  Needs: Language support, clear currency conversion, and easy access to local hotel information.

---
## 🛠️ Features & Functionalities

The Swift Retreat mobile application, built with Flutter, focuses exclusively on the customer journey, from discovering a suitable room to managing a booking, all while prioritizing Shariah-compliant filtering.

### ✅ Customer Core Features

| Feature | Description | Mobile / Customer Focus |
|--------|-------------|--------------------------|
| Online Room Reservation | Customers can browse available rooms, view high-resolution photos, and make instant bookings. Real-time availability is displayed to prevent overbooking. | A fluid mobile-first design allows intuitive swiping through room types and fast loading of real-time data using the Flutter framework. |
| Shariah-Compliant Filtering | Provides dynamic filtering options based on Islamic values, allowing customers to easily find accommodations that meet their needs. | Dedicated, easy-to-use Filter Chips and toggles for options like Alcohol-Free, Family Only, Private/Segregated Pools, and In-room Prayer Facilities. |
| Secure Authentication & Profile | A secure system for account creation, login, and managing personal details. The customer profile stores preferences and booking history. | Uses standard mobile authentication flows (including social login) to provide a seamless sign-up experience and secure access to booking details. |
| Payment and Invoice System | Customers can complete secure online payments using various methods (credit/debit cards, mobile wallets) and instantly receive a digital invoice. | Integrates with mobile payment SDKs for fast, secure checkout and allows customers to download or share a PDF invoice directly from the app. |
| Booking History & Management | Customers can view all upcoming and past bookings, reservation details, and initiate cancellations. | Uses a clear Tab Bar to segment Upcoming and Past bookings, with a dedicated screen for managing or modifying an existing reservation. |


---


### ✨ Supporting Features

-  **Search & Filter**:
   Advanced mobile search bar allowing customers to quickly search by city, hotel name, dates, and filter results by price, star rating, and Shariah-compliant attributes.

-  **Halal Food Service Info**:
   Dedicated section on the hotel page providing information on Halal-certified dining within the hotel or clear, verifiable links to nearby halal food options.

-  **Prayer Facilities Information**:
   Clear visibility on whether the room includes a Qibla direction indicator and prayer mat, and if dedicated prayer rooms are available within the hotel premises.

- **Email & Push Notifications**:
  Customers receive automated emails for booking confirmations and invoices, alongside mobile push notifications for key reminders (e.g., check-in time, payment confirmation).

- **Mobile-First Design**:
  A highly optimized layout specifically for smartphone use, utilizing Flutter's rich widget set to ensure speed and a beautiful, consistent UI across all devices.


---

Screenshot of website mockup

**User's side**

**login page** 

<img align="center" alt="Screenshot 2025-12-20 214907" src="https://github.com/user-attachments/assets/9e08a658-4eb2-4971-b0fc-154720483dc2" />


**register page**

<img align="center" alt="Screenshot 2025-12-20 214929" src="https://github.com/user-attachments/assets/45151629-8bca-4ad3-b929-57f45fce807e" />


**landing page**

<img align="center" alt="Screenshot 2025-12-20 203546" src="https://github.com/user-attachments/assets/cc2870f2-6bbb-4e5d-b880-0a4a72b1ae3e" />


**payment page**

<img  align="center" alt="Screenshot 2025-12-20 203624" src="https://github.com/user-attachments/assets/9bc25e42-1f98-428f-bfb0-075459cfc82a" />


**booking management page**

<img  align="center" alt="Screenshot 2025-12-20 203706" src="https://github.com/user-attachments/assets/97b1d813-ff67-41b9-af6f-45b3fb98f227" />


### Architecture / Technical Design


**User's side**
**login and register page**


**landing page**



**payment page**

![Screenshot 2025-05-22 225719](https://github.com/user-attachments/assets/f97110de-a0bb-47dd-8532-ed087f511b90)

- Scaffold: The base container with an AppBar ("Payment Details").

- Stepper/Progress Indicator: A custom horizontal widget at the top showing the flow (Book -> Payment -> Confirm).

- Card/Container (Order Summary):

   - Row: Hotel thumbnail image + Column (Title, Rating, Location).

   - Divider: To separate sections.

   - Price Breakdown Table: Multiple Rows with MainAxisAlignment.spaceBetween for labels and values.

- RadioListTile Group: For selecting "Credit Card," "PayPal," or "Google Pay."

- BottomAppBar: A fixed container at the bottom holding the "Pay Now" ElevatedButton.


**booking management page**

![Screenshot 2025-05-22 224455](https://github.com/user-attachments/assets/be33b35d-0752-45ba-80b2-3e254237e3c4)

- Scaffold: With a bottom navigation bar.

- Segmented Control / TabBar: To toggle between "Upcoming," "Completed," and "Cancelled."

- ListView.builder: To render the scrollable list of booking cards.

- Booking Card (Custom Widget):

   - Column:

      - Top Section: Row with Image + Title/Date/Status Chip.

      - Action Row: "Cancel Booking" and "View Ticket" buttons.

### Data Model
ER Diagram

<img width="1086" height="796" alt="Untitled design" src="https://github.com/user-attachments/assets/92128289-ccb8-487a-9a04-68646d589888" />


### Sequence Diagram

![SD - Guest](https://github.com/user-attachments/assets/cf3e22e8-6ab5-4b92-aa58-7b12acfc4d03)

### References

---
### ✅ Final UI Screenshots
The screenshots provided above showcase the complete user interface of the Swift Retreat application, including:

---
- **Login and Registration pages for secure user authentication**
<img width="1917" height="845" alt="image" src="https://github.com/user-attachments/assets/757d046e-7c28-4622-bce6-68cc1cfe381e" />
- User can choose to register or login on this page
<img width="1912" height="850" alt="image" src="https://github.com/user-attachments/assets/4e69417b-c3aa-4c23-b201-c27f9d6baafd" />

---
- Landing page with search and filtering capabilities
- 
---
---
- **Booking interface**
<img width="1914" height="844" alt="image" src="https://github.com/user-attachments/assets/f91860e2-c8dc-4d53-845b-b1326d530c1f" />
- If user already choose their own preferred hotel, they can book the room by clicking on button "Book Now"

<img width="1918" height="846" alt="image" src="https://github.com/user-attachments/assets/b6c33d15-1540-4a53-8e67-aa4c48ecd0df" />
- User will be redirect to this page which user need to put their own the information on when they want to book the hotel and guest number.
- After that, they need to click on "Continue to Payment" to complete the payment
  
<img width="1913" height="839" alt="image" src="https://github.com/user-attachments/assets/4ab530bc-e10a-44ce-b790-ed5c821f9ead" />
- User can choose to pay using a card or online banking

<img width="435" height="223" alt="image" src="https://github.com/user-attachments/assets/c3faad36-19fd-4d13-8a75-21c26cf881f8" />
- If user done pay using a card, this pop-up will be display

<img width="1906" height="844" alt="image" src="https://github.com/user-attachments/assets/91009b42-74d9-4d27-a122-0173319e41f5" />
- If user decided to use online baking system, user need to choose their bank preferences.

<img width="1916" height="839" alt="image" src="https://github.com/user-attachments/assets/a58f58fa-45c3-4099-a931-04cf993f38bb" />
<img width="458" height="235" alt="image" src="https://github.com/user-attachments/assets/5b022b37-b381-4721-a3f7-4648ae8b70d3" />
- After user done making the payment using online banking, this pop-up will notified the user that the payment is successfull.


- Review Booking
<img width="1916" height="848" alt="image" src="https://github.com/user-attachments/assets/18e96d19-024e-4fa7-90b9-fda343351858" />
- If user want to review their booking, simply click "Bookings" and this page will be displayed.

- Cancel Booking
<img width="443" height="236" alt="image" src="https://github.com/user-attachments/assets/2d1b28a4-f8d9-43c7-a1b0-c98da8a4533b" />
<img width="1910" height="848" alt="image" src="https://github.com/user-attachments/assets/2dc7db24-3741-43c1-8322-b7b46f46989d" />
- User can simply click "cancel Booking" to cancel their room booking. And user can review their cancelled booking.

---
- **User Profile**
<img width="1918" height="839" alt="image" src="https://github.com/user-attachments/assets/e25213f4-6b52-422a-b47a-20ef960d6173" />

- Edit Profile
<img width="1914" height="725" alt="image" src="https://github.com/user-attachments/assets/d5947e91-aa5d-45d7-ad35-49f9405ab694" />

- Card Information/ Payment Information
<img width="1919" height="469" alt="image" src="https://github.com/user-attachments/assets/d3256a9c-3838-427d-aebe-d79410f84ab6" />

- Settings
<img width="1914" height="842" alt="image" src="https://github.com/user-attachments/assets/e88e1633-8510-41bc-991d-7303b8516d8e" />

- Privacy Policy
<img width="1914" height="848" alt="image" src="https://github.com/user-attachments/assets/1d0b3637-51a0-480c-a0a2-2cf7341b7b1c" />

- Terms of Service
<img width="1913" height="843" alt="image" src="https://github.com/user-attachments/assets/8b7e3777-96f6-4315-bef1-3d8128fcb002" />

- **Help % Support page**
<img width="1913" height="845" alt="image" src="https://github.com/user-attachments/assets/ad2d15f8-b19d-4282-bf55-62b0224527a0" />
---



### 📊 Summary of Achieved Features
**Core Features Implemented:**
1. **User Authentication** – Secure login and registration system
2. **Room Browsing & Filtering** – Dynamic search with Shariah-compliant filters (Prayer Room, Halal Dining, Family-Friendly options)
3. **Online Booking System** – Customers can book rooms with real-time availability
4. **Secure Payment Processing** – Multiple payment options with card details capture
5. **Booking Management** – Users can view, track, and manage their bookings
6. **Admin Dashboard** – Real-time monitoring of hotel operations, room occupancy, revenue, and guest feedback
7. **Facilities Management** – Staff can manage and assign room facilities
8. **Guest Management** – Complete CRUD operations for guest records
9. **Room Management** – Add, edit, delete, and filter room inventory
10. **Invoice & Confirmation Emails** – Automated confirmation and invoice generation

### 🔧 Technical Explanation
**Technology Stack:**
- **Frontend Framework:** Flutter – Builds native Android mobile applications with beautiful and consistent UI/UX
- **Backend & Database:** Firebase (Authentication, Cloud Firestore for real-time database, Cloud Storage for images)
- **Payment Integration:** Stripe or similar payment gateway
- **Architecture:** Clean Architecture with separation of concerns (Models, Services, Screens, Data)
- **State Management:** Provider or Riverpod for efficient state handling
- **Localization:** Multi-language support via l10n package

**Key Design Patterns:**
- Model-View-ViewModel (MVVM) for scalable architecture
- Repository Pattern for data access abstraction
- Service Layer for business logic separation
- Widget composition for reusable UI components

### 🚀 Limitations and Future Enhancements

**Current Limitations:**
1. **Offline Support** – App requires internet connectivity; offline caching not yet implemented
2. **Multi-Language Support** – Currently supports limited language options
3. **Analytics Dashboard** – Basic admin reporting; advanced analytics not available
4. **Notification System** – Email notifications implemented, but push notifications are in progress
5. **Payment History** – Limited transaction history and detailed payment reports
6. **User Support System** – No in-app chat or support ticketing system
7. **Review & Rating System** – User reviews feature not fully implemented

**Future Enhancements:**
1. **iOS Platform Expansion** – Extend Flutter application to support iOS devices, enabling users on iPhones and iPads to access Swift Retreat
2. **AI-Powered Recommendations** – Machine learning for personalized room suggestions based on user preferences
3. **Dynamic Pricing** – Real-time pricing adjustments based on demand and seasonality
4. **Virtual Room Tours** – 360° room previews using AR/VR technology
5. **Multi-Currency Support** – Seamless currency conversion for international travelers
6. **Advanced Loyalty Program** – Point-based rewards and exclusive member benefits
7. **Integration with Global OTA Platforms** – Connection with major booking platforms (Booking.com, Agoda, etc.)
8. **Enhanced Admin Analytics** – Detailed business intelligence and forecasting tools
9. **Guest Services Integration** – In-app requests for housekeeping, room service, and other hotel amenities
10. **Blockchain-based Invoices** – Verifiable invoice generation using blockchain technology
11. **Mobile Wallet Integration** – One-click payment via digital wallets (Apple Pay, Google Pay)




 
























