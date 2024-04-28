import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sf_weather_app/view/base/custom_button.dart';
import '../../../util/images.dart';
import '../../../util/styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      // Get.find<HomeController>().checkPermission();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  RefreshIndicator(
          onRefresh: () async{
          },
          child: Container(
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            // Below is the code for Linear Gradient.
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff97ABFF),
                  Color(0xff123597)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
                children: [
                  const SizedBox(height: 47),
                  Text("Dhaka",style: inter.copyWith(color: const Color(0xffFFFFFF),fontSize: 32, fontWeight: FontWeight.w700),),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(Images.locationIcon,height: 20,width: 20,),
                      SizedBox(width: 10,),
                      Text("Current Location",style: circular.copyWith(color: const Color(0xffFFFFFF),fontSize: 16, fontWeight: FontWeight.w400),),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(Images.partlyCloudy,height: 135,width: 130,),
                      SizedBox(width: 25,),
                      Text("13°", textAlign: TextAlign.right, style: circular.copyWith(color: const Color(0xffFFFFFF),fontSize: 123, fontWeight: FontWeight.w400),),
                    ],
                  ),
                  Text("Partly Cloud - H:17° L:4°", textAlign: TextAlign.right, style: circular.copyWith(color: const Color(0xffFFFFFF),fontSize: 23, fontWeight: FontWeight.w400),),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                          height: 41,
                          width: 106,
                          radius: 100,
                          onPressed: (){},
                          buttonText: "Today",
                        buttontextColor: Colors.white,
                        fontSize: 14,
                        buttoncolor: Color(0xff7A90E0),
                      ),
                      SizedBox(width: 10,),
                      CustomButton(
                        height: 41,
                        width: 134,
                        radius: 100,
                        onPressed: (){},
                        buttonText: "Next Days",
                        buttontextColor: Colors.white,
                        fontSize: 14,
                        buttoncolor: Color(0xff4E67B9),
                      ),                    ],
                  ),
                  SizedBox(height: 15,),
                   Expanded(
                     child: ListView.builder(
                                          shrinkWrap: true,
                                            itemCount: 6,
                                            // itemCount: controller.wf!.length,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (BuildContext context, int index){
                                              return Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.all(0),
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          gradient: LinearGradient(
                                                            begin: Alignment.topCenter,
                                                            end: Alignment.bottomCenter,
                                                            colors: [
                                                              Color(0xffA4B4EC),
                                                              Color(0xff6E86D9),
                                                            ],
                                                          ),
                                                          // color: Colors.grey[300],
                                                          borderRadius: BorderRadius.all(
                                                            Radius.circular(100)
                                                            // topLeft: Radius.circular(32),
                                                            // topRight: Radius.circular(32),
                                                          ),
                                                        ),
                                                        height: 139,
                                                        width: 66,
                                                        child: Column(
                                                          children: [
                                                            SizedBox(height: 16),
                                                            Text("Now", textAlign: TextAlign.center, style: circular.copyWith(color: const Color(0xffFFFFFF),fontSize: 16, fontWeight: FontWeight.w400),),
                                                            SizedBox(height: 8),
                                                            Image.asset(Images.partlyCloudy4, height: 48,width: 50,),
                                                            SizedBox(height: 10),
                                                            Text("13°", textAlign: TextAlign.center, style: circular.copyWith(color: const Color(0xffFFFFFF),fontSize: 18, fontWeight: FontWeight.w400),),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            }
                                        ),

                                        // child: Padding(
                                        //   padding: const EdgeInsets.symmetric(horizontal: 20),
                                        //   child: Row(
                                        //     crossAxisAlignment: CrossAxisAlignment.start,
                                        //     children: [
                                        //       Padding(
                                        //         padding: const EdgeInsets.all(0),
                                        //         child: Container(
                                        //           decoration: BoxDecoration(
                                        //               gradient: LinearGradient(
                                        //                 begin: Alignment.topCenter,
                                        //                 end: Alignment.bottomCenter,
                                        //                 colors: [
                                        //                   // Color(0xff0DABCE),
                                        //                   Colors.greenAccent.shade100,
                                        //                   Colors.grey.shade300,
                                        //                 ],
                                        //               ),
                                        //               // color: Colors.grey[300],
                                        //               borderRadius: BorderRadius.only(
                                        //                   topLeft: Radius.circular(32),
                                        //                   topRight: Radius.circular(32),
                                        //               ),
                                        //           ),
                                        //           height: 100,
                                        //           width: 55,
                                        //           child: Column(
                                        //             children: [
                                        //               SizedBox(height: 10),
                                        //               Image.asset("assets/icon/sun.png", height: 32,width: 32,),
                                        //               SizedBox(height: 8),
                                        //               Text("22°", style: robotoMedium.copyWith(fontSize: 17),),
                                        //               SizedBox(height: 5),
                                        //               Text("Mon", style: robotoMedium.copyWith(color: Colors.black54),),
                                        //             ],
                                        //           ),
                                        //         ),
                                        //       ),
                                        //     ],
                                        //   ),
                                        // ),
                                      ),
                  SizedBox(height: 20),
                  Container(
                    height: Get.height,
                    width: Get.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff94A5DE),
                          Color(0xff22429F),
                        ],
                      ),
                      // color: Colors.grey[300],
                      borderRadius: BorderRadius.all(
                          Radius.circular(100)
                        // topLeft: Radius.circular(32),
                        // topRight: Radius.circular(32),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, right: 40),
                          child: Container(
                            height: 88,
                            width: Get.width,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xffA4B4EC),
                                  Color(0xff6E86D9),
                                ],
                              ),
                              // color: Colors.grey[300],
                              borderRadius: BorderRadius.all(
                                  Radius.circular(16)
                                // topLeft: Radius.circular(32),
                                // topRight: Radius.circular(32),
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Image.asset(Images.sunfog, height: 56,width: 56,)),
                                SizedBox(width: 10,),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 15),
                                      Text("Sunset", style: circular.copyWith(color: const Color(0xffFFFFFF),fontSize: 16, fontWeight: FontWeight.w400),),
                                      SizedBox(height: 4),
                                      Text("5:51PM", style: circular.copyWith(color: const Color(0xffFFFFFF),fontSize: 24, fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),
                                // SizedBox(width: 10,),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 15),
                                      Text("Sunrise", style: circular.copyWith(color: const Color(0xffFFFFFF),fontSize: 16, fontWeight: FontWeight.w400),),
                                      SizedBox(height: 4),
                                      Text("7:00AM", style: circular.copyWith(color: const Color(0xffFFFFFF),fontSize: 24, fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 40, right: 40),
                          child: Container(
                            height: 88,
                            width: Get.width,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xffA4B4EC),
                                  Color(0xff6E86D9),
                                ],
                              ),
                              // color: Colors.grey[300],
                              borderRadius: BorderRadius.all(
                                  Radius.circular(16)
                                // topLeft: Radius.circular(32),
                                // topRight: Radius.circular(32),
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Image.asset(Images.sun, height: 56,width: 56,)),
                                SizedBox(width: 10,),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 15),
                                      Text("Sunset", style: circular.copyWith(color: const Color(0xffFFFFFF),fontSize: 16, fontWeight: FontWeight.w400),),
                                      SizedBox(height: 4),
                                      Text("5:51PM", style: circular.copyWith(color: const Color(0xffFFFFFF),fontSize: 24, fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),
                                // SizedBox(width: 10,),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 15),
                                      Text("Sunrise", style: circular.copyWith(color: const Color(0xffFFFFFF),fontSize: 16, fontWeight: FontWeight.w400),),
                                      SizedBox(height: 4),
                                      Text("7:00AM", style: circular.copyWith(color: const Color(0xffFFFFFF),fontSize: 24, fontWeight: FontWeight.w500),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]
            ),
          ),
        ),
      ),
    );
  }
}
