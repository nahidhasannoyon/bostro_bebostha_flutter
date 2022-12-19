import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  static const routeName = '/first-screen';
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Your are a super hero!'),
          const Text('Your can Bring Happiness!'),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Next'), // <-- Text
                SizedBox(
                  width: 5,
                ),
                Icon(
                  // <-- Icon
                  Icons.forward,
                  size: 24.0,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
