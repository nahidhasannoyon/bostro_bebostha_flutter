import 'package:fardin_project/constants.dart';
import 'package:fardin_project/views/auth/sign_in_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/sign-up-screen';
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/sign-up-screen-background.png'),
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
                  child: Text('Create Your New Account', style: kTitleStyle),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Create your new account, so you can find us and do donating',
                  style: kSubtitleStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: kTextFieldDecoration('User Name'),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: kTextFieldDecoration('Email Address'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.visibility_off,
                        color: Color.fromRGBO(11, 149, 149, 1),
                      ),
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(194, 231, 231, 1),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(175, 175, 175, 1),
                      fontFamily: 'MADE-Mellow',
                      fontSize: 22,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(11, 149, 149, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(11, 149, 149, 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.visibility_off,
                        color: Color.fromRGBO(11, 149, 149, 1),
                      ),
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(194, 231, 231, 1),
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(175, 175, 175, 1),
                      fontFamily: 'MADE-Mellow',
                      fontSize: 22,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(11, 149, 149, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(11, 149, 149, 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                      'Sign Up',
                      style: kButtonTextStyle,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: kSubtitleStyle,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(SignInScreen.routeName);
                        },
                        child: const Text(
                          'Sign In',
                          style: kButtonTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Continue with',
                  style: kSubtitleStyle,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.4,
                  color: const Color.fromRGBO(194, 231, 231, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/google-icon.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/facebook-icon.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
