import 'package:fardin_project/controllers/style_controller.dart';
import 'package:flutter/material.dart';

import 'home/bottom_nav_bar_widget.dart';

class ProvideInfoScreen extends StatelessWidget {
  static const routeName = '/provide-info';
  const ProvideInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/provide-info-screen-background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const FittedBox(
                  child: Text(
                    'Please Provide Some Info',
                    style: kTitleStyle,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Kindly provide the info to help us for finding you.',
                  style: kSubtitleStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: kTextFieldDecoration('Home Town'),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: kTextFieldDecoration('Post Office /Postal Code'),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: kTextFieldDecoration('Present Address'),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: kTextFieldDecoration('NID Card No.'),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: kTextFieldDecoration('Mobile Phone Number'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: kSecondaryColor,
                        backgroundColor: const Color.fromRGBO(255, 241, 221, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                          side: const BorderSide(
                              color: kSecondaryColor, width: 2),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(BottomNavBarWidget.routeName);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Skip',
                          style: kButtonTextStyle,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: kButtonStyle,
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(ProvideInfoScreen.routeName);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Update',
                          style: kButtonTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
