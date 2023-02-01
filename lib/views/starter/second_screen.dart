import 'package:fardin_project/constants.dart';
import 'package:fardin_project/views/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  static const routeName = '/second-screen';
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/second-screen-background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    'assets/images/marginalia-girl-donates-money-to-man.png',
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                  const FittedBox(
                    child: Text(
                      'We need a Superhero like YOU',
                      style: kTitleStyle,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'It is not how much we give, but how much love we put into giving',
                        style: kSubtitleStyle,
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('~ Mother Teresa',
                              style: TextStyle(
                                color: Color.fromRGBO(84, 73, 73, 1),
                                fontSize: 22,
                              )),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: kButtonStyle,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Back',
                            style: kButtonTextStyle,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: kButtonStyle,
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(SignUpScreen.routeName);
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Next',
                            style: kButtonTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
