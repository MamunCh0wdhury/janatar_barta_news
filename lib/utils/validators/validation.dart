class TValidator {
  /// -- Email Validation

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (emailRegExp.hasMatch(value)) {
      return 'Invalid Email Address';
    }
    return null;
  }

  /// -- Password Validation

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    if (value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }

    if (value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number';
    }
    if (value.contains(RegExp(r'[!@#4%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special character';
    }
    return null;
  }

  /// -- Phone Number Validation

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }

    if (value.contains(RegExp(r'^\d{10}$'))) {
      return 'Invalid phone number format(10 digits required)';
    }
    return null;
  }
}
