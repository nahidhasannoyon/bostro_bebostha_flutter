import 'package:flutter/material.dart';

const kBackgroundColor = Color.fromRGBO(255, 241, 221, 1);

const kSecondaryColor = Color.fromRGBO(11, 125, 125, 1);

const kTitleStyle = TextStyle(
  fontFamily: 'MADE-Kenfolg',
  fontSize: 30,
  color: kSecondaryColor,
);

const kSubtitleStyle = TextStyle(
  color: Color.fromRGBO(84, 73, 73, 1),
  fontSize: 22,
);

const kButtonTextStyle = TextStyle(
  fontFamily: 'MADE-Kenfolg',
  fontSize: 22,
);

var kButtonStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white,
  backgroundColor: kSecondaryColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(32.0),
  ),
);

InputDecoration kTextFieldDecoration(String? hint) {
  return InputDecoration(
    filled: true,
    fillColor: const Color.fromRGBO(194, 231, 231, 1),
    hintText: hint,
    hintStyle: const TextStyle(
      color: Color.fromRGBO(175, 175, 175, 1),
      fontFamily: 'MADE-Mellow',
      fontSize: 22,
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(
        color: Color.fromRGBO(11, 149, 149, 1),
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(
        color: Color.fromRGBO(11, 149, 149, 1),
      ),
    ),
  );
}
