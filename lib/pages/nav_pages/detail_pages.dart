import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/appbutton.dart';
import 'package:travel_app/widgets/customButton.dart';
import 'package:travel_app/widgets/text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int selectedIndex = -1;
  int _stars = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/mountain.jpeg"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                  left: 20,
                  right: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                    ],
                  )),
              Positioned(
                top: 320,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                              text: "Yosemite",
                              color: Colors.black54.withOpacity(0.8),
                              fontWeight: FontWeight.bold,
                            ),
                            AppText(
                              text: "\$250",
                              color: AppColors.mainColor,
                              fontWeight: FontWeight.bold,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on, color: AppColors.mainColor),
                            const SizedBox(
                              width: 5,
                            ),
                            AppText(
                              text: "USA, California",
                              size: 16,
                              color: AppColors.textColor1,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Wrap(
                              children: List.generate(
                                  5,
                                  (index) => Icon(
                                        Icons.star,
                                        color: _stars > index
                                            ? AppColors.starColor
                                            : AppColors.textColor2,
                                      )),
                            ),
                            const SizedBox(width: 10),
                            AppText(
                              text: "(4.0)",
                              size: 16,
                              color: AppColors.textColor2,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        AppText(
                          text: "People",
                          color: Colors.black,
                          size: 26,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        AppText(
                          text: "Number of people in the group",
                          size: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = index;
                                      });
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      child: AppButton(
                                        size: 50,
                                        color: selectedIndex == index
                                            ? Colors.white
                                            : Colors.black,
                                        borderColor: selectedIndex == index
                                            ? Colors.black
                                            : AppColors.buttonBackground,
                                        backgroundColor: selectedIndex == index
                                            ? Colors.black
                                            : AppColors.buttonBackground,
                                        isIcon: false,
                                        text: (index + 1).toString(),
                                      ),
                                    ),
                                  )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        AppText(
                          text: "Description",
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.8),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AppText(
                          text:
                              "You must go for travel. Travelling helps get rid of pressure. Go to the mountains to see the nature",
                          size: 15,
                          color: AppColors.mainColor,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ]),
                ),
              ),
              Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppButton(
                          color: AppColors.textColor1,
                          size: 60,
                          backgroundColor: Colors.white,
                          borderColor: AppColors.textColor2,
                          isIcon: true,
                          icon: Icons.favorite),
                      const SizedBox(width: 20),
                      CustomButton(
                        isResponsive: true,
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
