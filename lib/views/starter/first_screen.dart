import 'package:fardin_project/controllers/style_controller.dart';
import 'package:fardin_project/views/starter/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  static const routeName = '/first-screen';
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/first-screen-background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const FittedBox(
                  child: Text(
                    'Your Are A Superhero!',
                    style: kTitleStyle,
                  ),
                ),
                Image.asset(
                  'assets/images/girl-swinging.png',
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
                const FittedBox(
                  child: Text(
                    'Your can Bring Happiness!',
                    style: kTitleStyle,
                  ),
                ),
                ElevatedButton(
                  style: kButtonStyle,
                  onPressed: () {
                    Navigator.of(context).pushNamed(SecondScreen.routeName);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Next',
                          style: kButtonTextStyle,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_circle_right_outlined,
                          size: 30.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
