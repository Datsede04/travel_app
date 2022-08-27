import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/customButton.dart';
import 'package:travel_app/widgets/text.dart';

class WelcomPage extends StatefulWidget {
  const WelcomPage({Key? key}) : super(key: key);

  @override
  State<WelcomPage> createState() => _WelcomPageState();
}

class _WelcomPageState extends State<WelcomPage> {
  List images = ['welcome-one.png', 'welcome-two.png', 'welcome-three.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/" + images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: "Travel",
                          fontWeight: FontWeight.bold,
                        ),
                        AppText(
                          text: "Mountain",
                          size: 30,
                          fontWeight: FontWeight.normal,
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 250,
                          child: AppText(
                            text:
                                "Mountain hike give you an incredible sence f freedom alon with endurance test",
                            size: 16,
                          ),
                        ),
                        const SizedBox(height: 40),
                        CustomButton(width: 120)
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots
                                ? AppColors.mainColor
                                : AppColors.mainColor.withOpacity(0.7),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
