import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api_app/home/controller/home_feed_controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  static const String id = "/HomeScreen";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeFeedController homeFeedController = Get.find();
  // HomeFeedController homeFeedController = Get.put(HomeFeedController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home: Getx API"),
      ),
      body: Center(
          child: Column(
        children: [
          Obx(() => Text("Count: ${homeFeedController.count}")),
          IconButton(
              color: Colors.blue,
              onPressed: () {
                homeFeedController.incrementCount();
              },
              icon: const Icon(Icons.add))
        ],
      )),
    );
  }
}

// import 'package:flutter/material.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("API in Getx"),
//         ),
//         body: createDiscoverFeed());
//   }

//   Widget createDiscoverFeed() {
//     return Container(
//       height: 260,
//       // padding: const EdgeInsets.only(left: 10, right: 10),
//       child: ListView.builder(
//           itemCount: 10,
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, index) {
//             return Container(
//               height: 259,
//               width: 156,
//               margin: const EdgeInsets.only(right: 16),
//               padding: const EdgeInsets.only(top: 12, left: 8, right: 8),
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(8)),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Image.asset("assets/png/story_profile.png",
//                           height: 32, width: 32),
//                       const Text(
//                         "Emma Jones",
//                         style: TextStyle(
//                             color: Colors.grey,
//                             fontWeight: FontWeight.w700,
//                             fontFamily: "GothicA1",
//                             fontStyle: FontStyle.normal,
//                             fontSize: 12.0),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     "Quisque arcu dolor, nec faucibus sed faucibus, elit feugiat. Proin purus ipsum, volutpat id erat vitae, urna rhoncus eleifend.",
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                     style: TextStyle(
//                         color: Colors.grey,
//                         fontWeight: FontWeight.w500,
//                         fontFamily: "GothicA1",
//                         fontStyle: FontStyle.normal,
//                         fontSize: 12.0),
//                   ),
//                   Container(
//                     alignment: Alignment.centerLeft,
//                     margin: const EdgeInsets.symmetric(vertical: 8),
//                     child: const Text(
//                       "#halloween #party",
//                       style: TextStyle(
//                           color: Colors.blue,
//                           fontWeight: FontWeight.w500,
//                           fontFamily: "GothicA1",
//                           fontStyle: FontStyle.normal,
//                           fontSize: 12.0),
//                     ),
//                   ),
//                   Stack(
//                     clipBehavior: Clip.none,
//                     children: [
//                       Image.asset(
//                         "assets/png/feed_img.png",
//                         height: 105,
//                         width: 140,
//                         fit: BoxFit.fill,
//                       ),
//                       Positioned(
//                           right: 4,
//                           top: 4,
//                           child: Container(
//                             alignment: Alignment.centerRight,
//                             height: 18,
//                             width: 34,
//                             decoration: BoxDecoration(
//                                 color: Colors.black.withOpacity(0.15),
//                                 borderRadius: BorderRadius.circular(4)),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 // SvgPicture.asset(
//                                 //   Assets.svg.aiImages,
//                                 //   height: 10,
//                                 //   width: 10,
//                                 // ),
//                                 const Text(
//                                   "5+",
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.w500,
//                                       fontFamily: "GothicA1",
//                                       fontStyle: FontStyle.normal,
//                                       fontSize: 10.0),
//                                 ),
//                               ],
//                             ),
//                           )),
//                     ],
//                   ),
//                   const SizedBox(height: 12),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       // PopupMenuButton(
//                       //   shape: RoundedRectangleBorder(
//                       //       borderRadius:
//                       //           BorderRadius.all(Radius.circular(60.0))),
//                       //   child: SvgPicture.asset(
//                       //     Assets.svg.heart,
//                       //     height: 16,
//                       //     width: 16,
//                       //   ),
//                       //   onSelected: (value) {
//                       //     // _onMenuItemSelected(value as int);
//                       //     print("val: $value");
//                       //   },
//                       //   itemBuilder: (ctx) => [
//                       //     PopupMenuItem(
//                       //       value: 0,
//                       //       height: 48,
//                       //       // padding: EdgeInsets.only(top: 2, bottom: 2),
//                       //       child: Container(
//                       //         width: 130,
//                       //         height: 20,
//                       //         child: ListView.builder(
//                       //           itemCount: emojiList.length,
//                       //           // shrinkWrap: true,
//                       //           scrollDirection: Axis.horizontal,
//                       //           controller: ScrollController(),
//                       //           itemBuilder: (context, index) {
//                       //             return Container(
//                       //               padding: EdgeInsets.only(right: 5),
//                       //               child: Text(
//                       //                 emojiList[index]['emoji'],
//                       //                 style: TextStyle(
//                       //                     color: ConstColors.black,
//                       //                     fontWeight: FontWeight.w600,
//                       //                     fontFamily: "GothicA1",
//                       //                     fontStyle: FontStyle.normal,
//                       //                     fontSize: 14.0),
//                       //               ),
//                       //             );
//                       //           },
//                       //         ),
//                       //       ),
//                       //     ),
//                       //   ],
//                       // ),
//                       GestureDetector(
//                         onTap: () {},
//                         onLongPress: () {
//                           print("Long pressed");
//                         },
//                         child: Icon(Icons.comment),
//                       ),
//                       GestureDetector(
//                         onTap: () {},
//                         onLongPress: () {
//                           print("Long pressed");
//                         },
//                         child: Icon(Icons.share),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             );
//           }),
//     );
//   }
// }
