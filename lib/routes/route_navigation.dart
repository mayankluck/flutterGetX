import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/routes/first_screen.dart';
import 'package:getx_tutorial/routes/second_screen.dart';

class RouteHomeScreen extends StatelessWidget {
  const RouteHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Basic Route",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Basic Routes"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("This is Route Home Screen", style: TextStyle(fontSize: 30, color: Colors.blue),),
              const Text("Click Here to go to First Screen"),
              ElevatedButton(
                  onPressed: () {
                    Get.to(const FirstRouteScreen(),
                    );
                  },
                  child: const Text("Go To First Screen"))
            ],
          ),
        ),
      ),
    );
  }
}
