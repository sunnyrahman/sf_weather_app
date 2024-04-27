import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../util/dimensions.dart';
import '../../util/images.dart';
import '../../util/styles.dart';


class NoResultFound extends StatelessWidget {
  final String title;
  final String description;
  final double height;
  const NoResultFound({Key? key,  this.title="No Result Found",  this.description="",  this.height=200}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(height: height),
          Image.asset(Images.result_not_found,height: 100),
          SizedBox(height: 20,),
          Text("${title}",style: robotoMedium.copyWith(color: Colors.black,fontSize: Dimensions.fontSizeExtraLarge),),
          Text("${description}",style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault),),

        ],
      ),
    );
  }
}
