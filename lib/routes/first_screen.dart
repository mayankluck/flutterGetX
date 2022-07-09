import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/routes/route_navigation.dart';
import 'package:getx_tutorial/routes/second_screen.dart';

class FirstRouteScreen extends StatelessWidget {
  const FirstRouteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "This is First Screen of route Test",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            ElevatedButton(
                onPressed: () async {
                 // Get.to(const SecondRouteScreen(),
                   // fullscreenDialog: true,       // second screen show as dialog, on place of back button it show cross button
                   // transition: Transition.zoom,    // screen open in zoom mood (small to big)
                  //  duration: Duration(milliseconds: 4000),
                   // curve: Curves.bounceInOut,
                  //);
                  //Get.off(const SecondRouteScreen());       // to replace screen

                  //Get.offAll(const SecondRouteScreen());      // to cancel all previous screen

                  //Get.to(const SecondRouteScreen(),arguments: "Data from this screen");     // using arguments send data to next screen

                  var data  = await Get.to(const SecondRouteScreen());
                  print("The data get back from second screen-> $data");

                },
                child: const Text("Go To Second Screen"))
          ],
        ),
      ),
    );
  }
}
