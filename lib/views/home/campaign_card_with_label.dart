import 'package:flutter/material.dart';

import '../../controllers/style_controller.dart';
import 'campaign_card_builder.dart';

class CampaignCardWithLabel extends StatelessWidget {
  final String label;

  const CampaignCardWithLabel({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(194, 231, 231, 1),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      color: kSecondaryColor,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const CampaignCardBuilder(
                  tag: 'Donated',
                  title: 'Sunamgonj Flood',
                  subtitle: 'Admin',
                  description: 'Monetary Camp',
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
