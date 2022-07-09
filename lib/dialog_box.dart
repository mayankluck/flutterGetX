import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogBoxScreen extends StatelessWidget {
  const DialogBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dialog",
      home: Scaffold(
        appBar: AppBar(title: const Text("Dialog"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (){
                    //Get.defaultDialog();
                    Get.defaultDialog(
                      title: "Dialog Title",
                      titleStyle: TextStyle(fontSize: 20, ),
                      middleText: "This is middle Text",      //override by content
                      middleTextStyle: TextStyle(fontSize: 15),
                      backgroundColor: Colors.purple,
                      radius: 70,
                      content: Row(
                        children: const [
                          CircularProgressIndicator(),
                          SizedBox(width: 16),
                          Expanded(child: Text("Data Loading")),
                        ],
                      ),
                      textCancel: "Cancel",
                      cancelTextColor: Colors.white,    // override by cancel
                      cancel: const Text("Cancel Button",style: TextStyle(color: Colors.white)),
                      textConfirm: "Confirm",           // override by Confirm
                      confirm: const Text("confirm Button",style: TextStyle(color: Colors.white)),
                      confirmTextColor: Colors.white,
                      onCancel: (){},
                      onConfirm: (){},
                      buttonColor: Colors.green,
                      actions: [
                        ElevatedButton(onPressed: (){Get.back();}, child: const Text("Action 1")),
                        ElevatedButton(onPressed: (){Get.back();}, child: const Text("Action 2")),
                      ],
                      barrierDismissible: false           //by default value is true, on click outside of dialog box , it will close


                    );

                  },
                  child: const Text("Show Dialog"),

              )
            ],
          ),
        ),
      ),
    );
  }
}
