import 'package:fardin_project/controllers/style_controller.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  static const routeName = '/setting';
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(194, 231, 231, 1),
          automaticallyImplyLeading: false,
          toolbarHeight: 200,
          title: const Center(
            child: CustomAppBar(),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/setting_page_bg.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  PersonalInfo(size: size),
                  const SizedBox(
                    height: 20,
                  ),
                  const UserAddress(),
                  const SizedBox(
                    height: 20,
                  ),
                  const UserInfo(),
                  const SizedBox(
                    height: 20,
                  ),
                  const SecuritySetting(),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: kButtonStyle,
                    child: const Text('Update Profile'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecuritySetting extends StatelessWidget {
  const SecuritySetting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text(
            'Security Settings',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: kSecondaryColor,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Old Password',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kSecondaryColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: kTextFieldDecoration('Enter Old password'),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'New Password',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kSecondaryColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: kTextFieldDecoration(
            'Enter New password',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Confirm Password',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kSecondaryColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: kTextFieldDecoration(
            'Enter Confirm password',
          ),
        ),
      ],
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text(
            'User Info',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: kSecondaryColor,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Job',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kSecondaryColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: kTextFieldDecoration('What do you do?'),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Institute',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kSecondaryColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: kTextFieldDecoration(
            'Please Enter You Institute’s Name',
          ),
        ),
      ],
    );
  }
}

class UserAddress extends StatelessWidget {
  const UserAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text(
            'Address',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: kSecondaryColor,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'HomeTown',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kSecondaryColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: kTextFieldDecoration('Comilla'),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Present Address',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kSecondaryColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: kTextFieldDecoration(
            'Khaja Nazim Uddin Road, Jhautola',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Permanent Address',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kSecondaryColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: kTextFieldDecoration(
            'Poduar Bazar, Bissoroad',
          ),
        ),
      ],
    );
  }
}

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text(
            'Personal Info',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: kSecondaryColor,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'User Name',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kSecondaryColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: kTextFieldDecoration('@fahim.ayan'),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Email Address',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kSecondaryColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: kTextFieldDecoration('ayan.fahim@gmail.com'),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'First Name',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kSecondaryColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: size.width * .4,
                  child: TextField(
                    decoration: kTextFieldDecoration('MD Fahim'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Last Name',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kSecondaryColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: size.width * .4,
                  child: TextField(
                    decoration: kTextFieldDecoration('Mazumder'),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Image(
          image: AssetImage(
            'assets/images/profile_pic.png',
          ),
          fit: BoxFit.fill,
          height: 100,
        ),
        Text(
          'MD Fahim Mazumder',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: kSecondaryColor,
          ),
        ),
        Text(
          'ayan.fahim@gmail.com',
          style: TextStyle(
            fontSize: 20,
            color: kSecondaryColor,
          ),
        ),
      ],
    );
  }
}
