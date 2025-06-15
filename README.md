# Reloop App

A comprehensive Flutter application with live tracking and social features.

## Features

- Live Map Tracking
- Picture in Picture (PIP) Support
- Social Sharing
- Social Login (Google, Facebook)
- OTP Verification
- Address Selection using Maps
- File and Image Upload
- Bottom Navigation

## Prerequisites

- Flutter SDK (3.16.0 or higher)
- Dart SDK (3.0.0 or higher)
- Android Studio / VS Code
- Firebase Account
- Google Maps API Key

## Setup Instructions

1. Clone the repository:
```bash
git clone https://github.com/yourusername/reloop_app.git
cd reloop_app
```

2. Install dependencies:
```bash
flutter pub get
```

3. Configure Firebase:
   - Create a new Firebase project
   - Add Android and iOS apps to your Firebase project
   - Download and add the configuration files:
     - Android: `google-services.json` to `android/app/`
     - iOS: `GoogleService-Info.plist` to `ios/Runner/`

4. Configure Google Maps:
   - Get a Google Maps API key from the Google Cloud Console
   - Add the API key to:
     - Android: `android/app/src/main/AndroidManifest.xml`
     - iOS: `ios/Runner/AppDelegate.swift`

5. Run the app:
```bash
flutter run
```

## Automated Builds

This project uses GitHub Actions for automated Android builds. The workflow:
1. Triggers on push to main branch and pull requests
2. Sets up the build environment
3. Installs dependencies
4. Runs tests and analysis
5. Builds the APK
6. Uploads the APK as an artifact

## Project Structure

```
lib/
├── screens/       # UI screens
├── widgets/       # Reusable widgets
├── models/        # Data models
├── services/      # API and service classes
├── utils/         # Utility functions
├── providers/     # State management
└── constants/     # App constants
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details. 