import 'dart:convert';

import 'package:flutter_config/flutter_config.dart';
import 'package:http/http.dart' as http;

final baseApiLink = FlutterConfig.get('BOSTRO_BEBOSTHA_API_KEY');

Future<bool> signUp(
  String username,
  String email,
  String password,
) async {
  try {
    final response = await http.post(
      Uri.parse(
        '$baseApiLink/auth/sign_up.php',
      ),
      body: jsonEncode(
        <String, String>{
          "username": username.toString(),
          "email": email.toString(),
          "password": password.toString()
        },
      ),
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Failed to connect');
    }
  } catch (e) {
    print('Failed to upload');
  }
  return false;
}
