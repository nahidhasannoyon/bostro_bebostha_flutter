import 'package:fardin_project/controllers/style_controller.dart';
import 'package:flutter/material.dart';

import 'campaign_card_builder.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool nearYou = true;
  bool emergency = false;
  bool yourCamp = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/home_page_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // * Custom App Bar
                CustomAppBar(size: size),

                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(194, 231, 231, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Create a New ',
                                style: TextStyle(
                                  color: kSecondaryColor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Campaign',
                                style: TextStyle(
                                  color: kSecondaryColor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kBackgroundColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                'Start Now',
                                style: TextStyle(
                                  color: kSecondaryColor,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            nearYou = true;
                            emergency = false;
                            yourCamp = false;
                          });
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(194, 231, 231, 1),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Text(
                                      'Near You',
                                      style: TextStyle(
                                        color: nearYou
                                            ? kSecondaryColor
                                            : const Color.fromRGBO(
                                                29, 193, 193, 1),
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            nearYou
                                ? Container(
                                    height: 9,
                                    width: 9,
                                    decoration: BoxDecoration(
                                      color: kSecondaryColor,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            nearYou = false;
                            emergency = true;
                            yourCamp = false;
                          });
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(194, 231, 231, 1),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Text(
                                      'Emergency',
                                      style: TextStyle(
                                        color: emergency
                                            ? kSecondaryColor
                                            : const Color.fromRGBO(
                                                29, 193, 193, 1),
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            emergency
                                ? Container(
                                    height: 9,
                                    width: 9,
                                    decoration: BoxDecoration(
                                      color: kSecondaryColor,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            nearYou = false;
                            emergency = false;
                            yourCamp = true;
                          });
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(194, 231, 231, 1),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Text(
                                      'Your Camps',
                                      style: TextStyle(
                                        color: yourCamp
                                            ? kSecondaryColor
                                            : const Color.fromRGBO(
                                                29, 193, 193, 1),
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            yourCamp
                                ? Container(
                                    height: 9,
                                    width: 9,
                                    decoration: BoxDecoration(
                                      color: kSecondaryColor,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      if (nearYou == true) ...[
                        nearYouWidget()
                      ] else if (emergency == true) ...[
                        emergencyWidget()
                      ] else if (yourCamp == true) ...[
                        yourCampWidget()
                      ]
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget nearYouWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        height: 250,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return const CampaignCardBuilder(
              tag: '',
              title: 'Sunamgonj Flood',
              subtitle: 'Admin',
              description: 'Monetary Camp',
            );
          },
        ),
      ),
    );
  }

  Widget emergencyWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        height: 250,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return const CampaignCardBuilder(
              tag: 'EEE',
              title: 'Sunamgonj Flood',
              subtitle: 'Admin',
              description: 'Monetary Camp',
            );
          },
        ),
      ),
    );
  }

  Widget yourCampWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        height: 250,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return const CampaignCardBuilder(
              tag: '',
              title: 'Sunamgonj Flood',
              subtitle: 'Admin',
              description: 'Monetary Camp',
            );
          },
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(194, 231, 231, 1),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Icon(
                  Icons.location_on_outlined,
                  color: kSecondaryColor,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Comilla, Bangladesh',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hello, Fahim',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Wish You a Good Day',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('assets/images/profile_pic.png'),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: size.height * 0.07,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                border: Border.all(
                  color: kSecondaryColor,
                ),
                color: const Color.fromRGBO(194, 231, 231, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.search,
                    color: kSecondaryColor,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
