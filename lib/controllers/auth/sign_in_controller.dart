import 'dart:convert';

import 'package:flutter_config/flutter_config.dart';
import 'package:http/http.dart' as http;

final baseApiLink = FlutterConfig.get('BOSTRO_BEBOSTHA_API_KEY');

Future<bool> signIn(
  String usernameOrEmail,
  String password,
) async {
  try {
    final response = await http.post(
      Uri.parse(
        '$baseApiLink/auth/sign_in.php',
      ),
      body: jsonEncode(
        <String, String>{
          "usernameOrEmail": usernameOrEmail.toString(),
          "password": password.toString()
        },
      ),
    );
    if (response.statusCode == 200) {
      var extractedData = json.decode(response.body);
      if (extractedData.isEmpty) {
        return false;
      } else {
        print(extractedData);
        return true;
      }
    } else {
      throw Exception('Failed to connect');
    }
  } catch (e) {
    print('Failed to upload');
  }
  return false;
}
