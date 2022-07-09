import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/routes/first_screen.dart';
import 'package:getx_tutorial/routes/route_navigation.dart';


class SecondRouteScreen extends StatelessWidget {
  const SecondRouteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Second screen"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${Get.arguments}"),     // Data from last screen
              const Text("This is Second Screen of route Test",style: TextStyle(fontSize: 20, color: Colors.red),),
              ElevatedButton(onPressed: (){Get.to(const FirstRouteScreen());}, child: const Text("Go To First Screen")),
              const SizedBox(height: 30,),
              const Text("click back with data : Data from second Screen ",style: TextStyle(fontSize: 20, color: Colors.red),),
              ElevatedButton(onPressed: (){Get.back(result: "Data from second Screen");}, child: const Text("Back On First Screen"))
            ],
          ),
        ),
      );
  }
}
