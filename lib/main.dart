import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Snackbar Dialog BottomSheet GetX',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar Dialog BottomSheet GetX"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text("Show Snackbar"),
              onPressed: () {
                Get.snackbar(
                  "Snackbar Title",
                  "Here is a Message from Snackbar",
                  snackPosition: SnackPosition.BOTTOM,
                  duration: Duration(seconds: 2),
                  icon: Icon(Icons.place),
                  borderRadius: 30,
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text("Show DialogBox"),
              onPressed: () {
                Get.defaultDialog(
                  title: "Permission Required",
                  middleText:
                      "Allow Access to your Storage for proper funtioning of our App",
                  actions: [
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("Allow"),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("Deny"),
                    ),
                  ],
                  //close dialog by clicking only on the Buttons Given but not
                  //by tapping outside the Screen
                  barrierDismissible: false,
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text("Show BottomSheet"),
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.wb_sunny_outlined),
                          title: Text("Light Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                            Get.back();
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.wb_sunny),
                          title: Text("Dark Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                            Get.back();
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
