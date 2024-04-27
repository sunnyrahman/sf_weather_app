import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      backgroundColor: Colors.grey[300],
      // backgroundColor: Color(0xffE0E0E0),
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Weather App", style: playfair.copyWith(color: Colors.black),),
          ],
        ),
        centerTitle: true,
      ),
      body: WillPopScope(
        onWillPop: () async {
          final shouldPop = await showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                actionsPadding: const EdgeInsets.only(bottom: 20),
                title: const Text('Are You Sure You Want To Exit'),
                actionsAlignment: MainAxisAlignment.spaceEvenly,
                actions: [
                  SizedBox(
                    height: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // background
                        //onPrimary: Colors.redAccent, // foreground
                      ),
                      onPressed: () {
                        // Navigator.pop(context, true);
                        SystemNavigator.pop();
                      },
                      child: const Text('YES'),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent, // background
                        //onPrimary: iconColor, // foreground
                      ),
                      onPressed: () {
                        Navigator.pop(context, false);
                      },
                      child: const Text('No'),
                    ),
                  ),
                ],
              );
            },
          );
          return shouldPop!;
        },
        child: SafeArea(
          child:  RefreshIndicator(
            onRefresh: () async{
            },
            child: const Column(
           children: [

            Center(child: Text("Welcome")),

           ]
            ),
          ),
        ),
      ),
    );
  }
}
