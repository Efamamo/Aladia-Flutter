import 'dart:convert'; // For jsonEncode and jsonDecode
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class AuthProvider with ChangeNotifier {
  bool _isLoading = false;
  String _emailError = '';
  String _passwordError = '';
  String _serverError = '';
  String _success = '';

  // Getter for _isLoading
  bool get isLoading => _isLoading;

  String get emailError => _emailError;
  String get passwordError => _passwordError;
  String get serverError => _serverError;
  String get success => _success;

  // Setter for _isLoading
  set isLoading(bool value) {
    if (_isLoading != value) {
      _isLoading = value;
      notifyListeners(); // Notify UI when _isLoading changes
    }
  }

  set emailError(String error) {
    _emailError = error;
  }

  set passwordError(String error) {
    _passwordError = error;
  }

  set serverError(String error) {
    _serverError = error;
  }

  set success(String message) {
    _success = message;
  }

  // Login method
  Future<void> login(String email, String password) async {
    isLoading = true; // Use the setter to update the loading state
    emailError = '';
    success = '';
    passwordError = '';
    serverError = '';

    const String apiUrl = 'https://dev-api.aladia.io/v2/auth/login';

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode({'email': email, 'password': password}),
      );

      if (response.statusCode == 200) {
        success = 'Login successful';
      } else {
        if (response.statusCode == 404) {
          emailError = 'User with this email not found';
        }

        if (response.statusCode == 401) {
          passwordError = 'Password is incorrect';
        }
      }
    } catch (error) {
      serverError = 'you cant use this service right now';
      isLoading = false;
    } finally {
      isLoading = false; // Use the setter to update the loading state
      notifyListeners();
    }
  }
}
