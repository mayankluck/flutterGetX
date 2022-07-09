import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Snackbar",
      home: Scaffold(
        appBar: AppBar(title: Text("Snackbar"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Get.snackbar("Snackbar", "snackbar message",
                  snackPosition: SnackPosition.BOTTOM,
                  titleText: Text("Another Title",style: TextStyle(color: Colors.white)),
                  messageText: Text("Message Text", style: TextStyle(color: Colors.white),),
                  colorText: Colors.red,
                  backgroundColor: Colors.black,
                  borderRadius: 30,
                  borderColor: Colors.orange,
                  borderWidth: 2.5,
                  //maxWidth: 200,
                  animationDuration:const Duration(milliseconds: 3000),
                  backgroundGradient: const LinearGradient(colors: [Colors.red, Colors.green]),
                  boxShadows: [const BoxShadow(color: Colors.yellow, offset: Offset(30,50), spreadRadius: 20, blurRadius: 8), ],
                  isDismissible: true,
                  dismissDirection: DismissDirection.horizontal,
                 // forwardAnimationCurve: Curves.bounceInOut,
                  reverseAnimationCurve: Curves.bounceInOut,
                  icon: const Icon(Icons.send,color: Colors.white,),
                  shouldIconPulse: false,
                  //leftBarIndicatorColor: Colors.green,
                  onTap: (value){
                  print("Value of onTap $value");
                  },
                  mainButton: TextButton(
                    child: const Text("Retry me"),
                    onPressed: (){
                      print("On press Retry me");
                    },
                  ),
                  //overlayBlur: 5,
                 // overlayColor: Colors.grey,
                  padding: EdgeInsets.all(20),
                  showProgressIndicator: true,
                  progressIndicatorBackgroundColor: Colors.green,
                  progressIndicatorValueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                  snackbarStatus: (value){
                  print("snackbar status $value");
                  },
                 // userInputForm: Form(child: Row(children: [Expanded(child: TextField())],))


                );

              }, child: Text("Show Snackbar"))
            ],
          ),
        ),
      ),
    );
  }
}
