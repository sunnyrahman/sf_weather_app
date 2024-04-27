import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../util/dimensions.dart';
import '../../util/styles.dart';

class CustomAlerDialogForNoInternet extends StatelessWidget {
  const CustomAlerDialogForNoInternet({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimensions.RADIUS_LARGE)),
      insetPadding: const EdgeInsets.all(30),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
          padding: const EdgeInsets.all(10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20,),
            Image.asset("assets/icon/nowifi.png",height: 50,width: 50,) ,
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Text('no_internet'.tr,textAlign:TextAlign.center,style: robotoRegular.copyWith(color:Colors.redAccent,fontSize: Dimensions.fontSizeLarge))),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Text('no_internet_des'.tr,textAlign:TextAlign.center,style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeDefault))),

                ],
              ),
            ),
            const SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Get.back();
                // Get.find<SplashController>().dataInitialize();
              },
              child: Container(
                width: 100,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.lightGreen
                ),
                child: Center(child: Text("Retry",style: robotoMedium,)),
              ),
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
