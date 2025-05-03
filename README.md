# CharityLink – Flutter-Based Charity Donation Platform

## Project Overview

**CharityLink** is a cross-platform mobile application developed using **Flutter**, designed to streamline the process of donating to verified charitable organizations. The app connects donors with trusted NGOs and enables them to contribute seamlessly through a user-friendly interface. With a focus on transparency and simplicity, CharityLink empowers users to make a meaningful impact with just a few taps.

---

## Features

- **User Authentication**  
  Secure signup, login, and password management

- **Donation Listings**  
  Browse ongoing campaigns and causes by verified organizations

- **Donation Management**  
  Donate using integrated payment gateways, view donation history

- **NGO Profiles**  
  View detailed profiles and past initiatives of partnered NGOs

- **Admin Panel** (if applicable)  
  Manage campaigns, NGOs, and verify donations (via backend API)

- **Real-Time Updates**  
  Campaign progress indicators, donation status, and notifications

- **Responsive UI**  
  Built for Android and iOS with adaptive layouts

---

## Tech Stack

- **Frontend**: Flutter (Dart)
- **Backend**: Node.js with Express (or your backend stack)(worikng on it)
- **Database**: MongoDB (or preferred backend database)(worikng on it)
- **Authentication**: JWT / Firebase Auth (as applicable)(worikng on it)
- **Payment Integration**: Razorpay / Stripe / PayPal (as per implementation)(worikng on it)

---

## Installation

Clone the repository:
```
bash
git clone https://github.com/yourusername/charitylink.git
cd charitylink
```
Get dependencies:
```
flutter pub get
```
Run the app:
```
flutter run
```


## Project Structure 
```
charitylink/
├── lib/
│   ├── models/            # Data models
│   ├── screens/           # App screens (Home, Login, Donation, etc.)
│   ├── services/          # API services and backend integration
│   ├── widgets/           # Reusable UI components
│   ├── providers/         # State management (if using Provider)
│   └── main.dart          # Entry point
├── assets/                # Images, fonts, and static assets
├── pubspec.yaml           # Project dependencies
├── android/               # Android-specific code
└── ios/                   # iOS-specific code
```
## Usage

### For Donors

- **Browse Campaigns**  
  Explore charity campaigns, sorted by category or urgency

- **Donate**  
  Click on a campaign and donate via secure payment

- **Track Donations**  
  View all past donations and track ongoing campaigns

### For Admins (Optional)

- **Login to the web/admin panel to:**
  - Approve and manage NGO listings
  - Monitor donation flow
  - Analyze impact metrics

---

## Development Guidelines

- Follow **Dart's effective style guide**
- Use **semantic and accessible** widgets
- Maintain a **modular folder structure**
- Comment your code where necessary
- Ensure **responsive design** using `MediaQuery` and `LayoutBuilder`
- Use **environment configuration** for API keys and endpoints

---

## Contributors

- **Rahul Kakkar** – Project Lead & Developer

---

## Acknowledgments

- **Flutter & Dart teams** for extensive documentation  
- **Firebase / Stripe / Razorpay** for payment and authentication SDKs  
- **Open Source Community** for icons, UI kits, and packages




