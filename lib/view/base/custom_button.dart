import 'package:flutter/material.dart';

import '../../util/dimensions.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String buttonText;
  final EdgeInsets? margin;
  final double? height;
  final double? width;
  final double? fontSize;
  final double radius;
  final Color? buttoncolor;
  final Color? color;
  final Color? buttontextColor;
  final Color? iconcolor;
  final IconData? icon;

  const CustomButton({super.key,
    required this.onPressed,
    this.color,
    required this.buttonText,
    this.margin,
    this.width,
    this.height,
    this.buttoncolor,
    this.buttontextColor,
    this.fontSize,
    this.radius=5,
    this.icon,
    this.iconcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: SizedBox(width: width ?? Dimensions.WEB_MAX_WIDTH,height: height ?? Dimensions.BUTTON_HEIGHT, child:Container(
      decoration:  BoxDecoration(
          color:buttoncolor??Theme.of(context).primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(radius))
      ),
      child:Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!=null?Icon(icon, color: iconcolor):Container(),
                icon!=null?const SizedBox(width: 8):Container(),
                Text(buttonText,style: TextStyle(color:buttontextColor,fontWeight: FontWeight.w600,fontSize: fontSize??Dimensions.fontSizeExtraLarge),),
              ],
            ),
          )),
    )
    ));
  }
}
