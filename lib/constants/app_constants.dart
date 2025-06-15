class AppConstants {
  // API Constants
  static const String baseUrl = 'https://api.example.com';

  // Storage Keys
  static const String tokenKey = 'auth_token';
  static const String userKey = 'user_data';

  // Map Constants
  static const double defaultLatitude = 0.0;
  static const double defaultLongitude = 0.0;
  static const double defaultZoom = 15.0;

  // Social Login
  static const String googleClientId = 'YOUR_GOOGLE_CLIENT_ID';
  static const String facebookAppId = 'YOUR_FACEBOOK_APP_ID';

  // File Upload
  static const int maxFileSize = 10 * 1024 * 1024; // 10MB
  static const List<String> allowedImageTypes = ['jpg', 'jpeg', 'png'];
  static const List<String> allowedFileTypes = ['pdf', 'doc', 'docx'];
}
