import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/misc/colors.dart';

class CustomButton extends StatelessWidget {
  double? width;
  bool? isResponsive;

  CustomButton({Key? key, this.width, this.isResponsive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: AppColors.mainColor),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset("img/button-one.png")]),
    );
  }
}
