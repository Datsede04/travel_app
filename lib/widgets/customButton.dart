import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/text.dart';

class CustomButton extends StatelessWidget {
  double? width;
  bool? isResponsive;

  CustomButton({Key? key, this.width = 120, this.isResponsive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.mainColor),
        child: Row(
            mainAxisAlignment: isResponsive == true
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              isResponsive == true
                  ? Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: AppText(
                        text: "Book Trip Now",
                        color: Colors.white,
                        size: 20,
                      ),
                    )
                  : Container(),
              Image.asset("img/button-one.png")
            ]),
      ),
    );
  }
}
