import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getx_api_app/firstScreen/controller/first_controller.dart';
import 'package:getx_api_app/home/view/home.dart';

import '../../article/view/article_post.dart';
import '../../gen/assets.gen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});
  static const String id = "/FirstScreen";

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  FirstController firstController = Get.find();

  @override
  void initState() {
    super.initState();
    callPhotoApi();
  }

  callPhotoApi() async {
    await firstController.getPhotoData();
    log("photoList in view: ${firstController.photoList}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(Home.id);
                // Get.to(Home());
              },
              icon: SvgPicture.asset(Assets.svg.categoryIc,
                  colorFilter:
                      const ColorFilter.mode(Colors.red, BlendMode.srcIn),
                  semanticsLabel: 'A red category icon'))
        ],
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          onPressed: () {
            Get.toNamed(Article.id);
          },
          child: Text("Go to Article page"),
        ),
      ),
      // body: Obx(
      //   () => ListView.builder(
      //       itemCount: firstController.photoList.length,
      //       itemBuilder: (c, i) {
      //         print(
      //             "firstController.photoList.length: ${firstController.photoList.length}");
      //         return Container(
      //           margin: const EdgeInsets.all(10),
      //           padding: const EdgeInsets.all(10),
      //           decoration: BoxDecoration(
      //               color: Colors.lightBlue.shade100,
      //               borderRadius: BorderRadius.circular(10)),
      //           child: Text(firstController.photoList[i]['title']),
      //         );
      //       }),
      // ),
    );
  }
}




// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx_api_app/firstScreen/controller/first_controller.dart';
// import 'package:getx_api_app/home/view/home.dart';

// class FirstScreen extends StatefulWidget {
//   const FirstScreen({super.key});
//   static const String id = "/FirstScreen";

//   @override
//   State<FirstScreen> createState() => _FirstScreenState();
// }

// class _FirstScreenState extends State<FirstScreen> {
//   FirstController firstController = Get.find();

//   @override
//   void initState() {
//     super.initState();
//     callPhotoApi();
//   }

//   callPhotoApi() async {
//     await firstController.getPhotoData();
//     log("photoList in view: ${firstController.photoList}");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("First Screen"),
//         actions: [
//           IconButton(
//               onPressed: () {
//                 Get.to(Home());
//               },
//               icon: Icon(Icons.next_plan))
//         ],
//       ),
//       body: Obx(
//         () => ListView.builder(
//             itemCount: firstController.photoList.length,
//             itemBuilder: (c, i) {
//               print(
//                   "firstController.photoList.length: ${firstController.photoList.length}");
//               return Container(
//                 margin: const EdgeInsets.all(10),
//                 padding: const EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                     color: Colors.lightBlue.shade100,
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Text(firstController.photoList[i]['title']),
//               );
//             }),
//       ),
//     );
//   }
// }
