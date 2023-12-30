// import 'package:flutter/material.dart';
// // import 'package:flutter_quill/flutter_quill.dart';
// import 'dart:io';
// import 'package:image_picker/image_picker.dart';
// import 'package:get/get.dart';

// class Article extends StatefulWidget {
//   const Article({super.key});
//   static const String id = "/Article";

//   @override
//   State<Article> createState() => _ArticleState();
// }

// class _ArticleState extends State<Article> {
//   bool showError = false;
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   String selectedItem = 'Public';

//   List<File> selectedMedia = [];
//   TextEditingController articleNameController = TextEditingController();
//   TextEditingController descriptionController = TextEditingController();

//   File? _image;

//   Future getImagePicker() async {
//     final image = await ImagePicker().pickImage(source: ImageSource.gallery);

//     if (image == null) return;

//     final imgTemp = File(image.path);

//     setState(() {
//       _image = imgTemp;
//     });
//   }

//   void _deleteImage(int index) {
//     setState(() {
//       selectedMedia.removeAt(index);
//     });
//   }

//   void _navigateToSecondScreen() {
//     if (_formKey.currentState!.validate() && selectedMedia.isNotEmpty) {
//       // Send all data to the next screen
//       Get.to(() => SecondScreen(
//             selectedItem: selectedItem,
//             articleName: articleNameController.text,
//             selectedMedia: selectedMedia,
//             description: descriptionController.text,
//           ));
//     }
//   }

//   // QuillController _controller = QuillController.basic();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0.5,
//         centerTitle: true,
//         title: Text(
//           "Article",
//           style: TextStyle(
//             color: Color.fromRGBO(51, 51, 51, 1),
//             fontWeight: FontWeight.w700,
//             fontFamily: "GothicA1",
//             fontStyle: FontStyle.normal,
//             fontSize: 16.0,
//           ),
//         ),
//         actions: [
//           Container(
//             margin: EdgeInsets.only(right: 8),

//             // Change color to green
//             padding: const EdgeInsets.only(right: 16.0, top: 9, bottom: 9),
//             child: ElevatedButton(
//               onPressed: _navigateToSecondScreen,
//               style: ElevatedButton.styleFrom(
//                 primary: Color.fromRGBO(
//                     46, 126, 139, 1), // Set primary color to green
//                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
//               ),
//               child: Text(
//                 "Next",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.w700,
//                   fontFamily: "GothicA1",
//                   fontStyle: FontStyle.normal,
//                   fontSize: 14.0,
//                 ),
//               ),
//             ),
//           ),
//         ],
//         leading: GestureDetector(
//           onTap: () {
//             // Add your cross icon functionality here
//           },
//           child: Padding(
//             padding: const EdgeInsets.only(left: 16.0),
//             child: Image.asset(
//               "assets/images/crossed.png", // Replace with the actual path to your cross icon image
//               height: 24,
//               color: Color.fromRGBO(0, 0, 0, 1),
//             ),
//           ),
//         ),
//       ),
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               //mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   height: 40,
//                   width: 110, // Adjust the width as needed
//                   margin:
//                       EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
//                   padding: const EdgeInsets.fromLTRB(8, 6, 0, 8),
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Color.fromRGBO(36, 74, 135, 1)),
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   child: DropdownButton<String>(
//                     value: selectedItem,
//                     onChanged: (String? newValue) {
//                       setState(() {
//                         selectedItem = newValue!;
//                       });
//                     },
//                     items: <String>[
//                       'Public',
//                       'Private',
//                       'Default',
//                     ].map<DropdownMenuItem<String>>((String value) {
//                       return DropdownMenuItem<String>(
//                         value: value,
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Image.asset(
//                               "assets/images/globe.png",
//                               color: Color.fromRGBO(36, 74, 135, 1),
//                             ),
//                             SizedBox(width: 8),
//                             Text(
//                               value,
//                               style: TextStyle(
//                                 fontSize: 12,
//                                 color: Color.fromRGBO(36, 74, 135, 1),
//                                 fontWeight: FontWeight.w700,
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     }).toList(),
//                     // No validator property for DropdownButton, so use it within a Form
//                   ),
//                 ),

//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       width: 328,
//                       margin: EdgeInsets.only(
//                           top: 8, bottom: 8, left: 16, right: 16),
//                       child: TextFormField(
//                         controller: articleNameController,
//                         decoration: InputDecoration(
//                           labelText: "Article Heading * ",
//                           labelStyle: TextStyle(
//                             color: Color.fromRGBO(153, 153, 153, 1),
//                             fontWeight: FontWeight.w500,
//                             fontFamily: "GothicA1",
//                             fontStyle: FontStyle.normal,
//                             fontSize: 14.0,
//                           ),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(6),
//                             borderSide: BorderSide(
//                               width: 1,
//                               color: Color.fromRGBO(204, 204, 204, 1),
//                             ),
//                           ),
//                         ),
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Article Heading is required';
//                           }
//                           return null;
//                         },
//                       ),
//                     ),
//                   ],
//                 ),

//                 // Input field label

//                 Container(
//                   margin: const EdgeInsets.fromLTRB(16, 8, 0, 0),
//                   child: Text(
//                     "Article Image * ",
//                     textAlign: TextAlign.start,
//                   ),
//                 ),
//                 SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         height: 140,
//                         width: 328,
//                         margin: EdgeInsets.only(
//                             top: 8, bottom: 8, left: 16, right: 16),
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             width: 0.6,
//                           ),
//                           borderRadius: BorderRadius.circular(6),
//                           color: Color.fromRGBO(214, 240, 244, 1),
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             GestureDetector(
//                               onTap: getImagePicker,
//                               child: Image.asset(
//                                 "assets/images/cloud.png",
//                                 color: Color.fromRGBO(45, 126, 139, 1),
//                               ),
//                             ),
//                             SizedBox(width: 10.0),
//                             const Text(
//                               "Upload image",
//                               style: TextStyle(
//                                 color: Color.fromRGBO(45, 126, 139, 1),
//                                 fontWeight: FontWeight.w400,
//                                 fontFamily: "GothicA1",
//                                 fontStyle: FontStyle.normal,
//                                 fontSize: 14.0,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                             // Conditionally show Image.file or an empty Container
//                             _image != null
//                                 ? Image.file(
//                                     _image!,
//                                     fit: BoxFit.cover,
//                                     height: 160,
//                                     width: 180,
//                                     alignment: Alignment.center,
//                                   )
//                                 : Container(),
//                           ],
//                         ),
//                       ),
//                       selectedMedia.isEmpty
//                           ? Text(
//                               'Please select at least one image',
//                               style: TextStyle(
//                                 color: Colors.red,
//                                 fontSize: 12.0,
//                               ),
//                             )
//                           : Container(),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Container(
//                             margin: EdgeInsets.only(
//                                 top: 6, bottom: 8, left: 16, right: 16),
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                 width: 0.6,
//                               ),
//                               borderRadius: BorderRadius.circular(6),
//                               color: Colors.white,
//                             ),
//                             child: Column(
//                               children: [
//                                 Container(
//                                   width: 328,
//                                   height: 268,
//                                   margin: EdgeInsets.only(
//                                       top: 6, bottom: 8, left: 16, right: 16),
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(6),
//                                   ),
//                                   // child: QuillEditor.basic(
//                                   //   configurations: QuillEditorConfigurations(
//                                   //     // controller: _controller,
//                                   //     readOnly: false,
//                                   //     maxHeight: 93,
//                                   //     maxContentWidth: 392,
//                                   //     // sharedConfigurations:
//                                   //     //     const QuillSharedConfigurations(
//                                   //     //   locale: Locale('de'),
//                                   //     // ),
//                                   //     placeholder: 'Description *',
//                                   //   ),
//                                   // ),
//                                 ),
//                                 Container(
//                                   padding: EdgeInsets.all(8),
//                                   decoration: BoxDecoration(
//                                     border: Border.all(
//                                       width: 0.4,
//                                     ),
//                                     borderRadius: BorderRadius.circular(1),
//                                     color: Colors.white,
//                                   ),
//                                   // child: QuillToolbar.simple(
//                                   //   configurations:
//                                   //       QuillSimpleToolbarConfigurations(
//                                   //     controller: _controller,
//                                   //     multiRowsDisplay: false,
//                                   //     sharedConfigurations:
//                                   //         const QuillSharedConfigurations(
//                                   //       locale: Locale('de'),
//                                   //     ),
//                                   //   ),
//                                   // ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SecondScreen extends StatelessWidget {
//   final String selectedItem;
//   // final String articleName;
//   final String description;
//   final List<File> selectedMedia;

//   SecondScreen({
//     required this.selectedItem,
//     required this.selectedMedia,
//     required this.description,
//     required String articleName,
//     // required this.articleName,
//   });

//   @override
//   Widget build(BuildContext context) {
//     String selectedItem = 'Public';
//     // Use the received parameters to build your UI
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0.5,
//         centerTitle: true,
//         title: Text(
//           "Advertise Post Preview",
//           style: TextStyle(
//             color: Color.fromRGBO(51, 51, 51, 1),
//             fontWeight: FontWeight.w700,
//             fontFamily: "GothicA1",
//             fontStyle: FontStyle.normal,
//             fontSize: 16.0,
//           ),
//         ),
//       ),
//       body: Column(
//         // mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             height: 40,
//             width: 110, // Adjust the width as needed
//             margin: EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
//             padding: const EdgeInsets.fromLTRB(8, 6, 0, 8),
//             decoration: BoxDecoration(
//               border: Border.all(color: Color.fromRGBO(36, 74, 135, 1)),
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             child: DropdownButton<String>(
//               value: selectedItem,
//               onChanged: (String? newValue) {
//                 // setState(() {
//                 //   selectedItem = newValue!;
//                 // });
//               },
//               items: <String>[
//                 'Public',
//                 'Private',
//                 'Default',
//               ].map<DropdownMenuItem<String>>((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Image.asset(
//                         "assets/images/globe.png",
//                         color: Color.fromRGBO(36, 74, 135, 1),
//                       ),
//                       SizedBox(width: 8),
//                       Text(
//                         value,
//                         style: TextStyle(
//                           fontSize: 12,
//                           color: Color.fromRGBO(36, 74, 135, 1),
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               }).toList(),
//               // No validator property for DropdownButton, so use it within a Form
//             ),
//           ),
//           Text('Selected Item: $selectedItem'),
//           // Text('Article Name: $articleName'),

//           Text("description: $description"),

//           Container(
//             height: 56,
//             width: 328,
//             margin: EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
//             padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//             decoration: BoxDecoration(
//               border: Border.all(
//                 width: 0.6,
//               ),
//               borderRadius: BorderRadius.circular(6),
//               color: Color.fromRGBO(214, 240, 244, 1),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   //onTap: _pickImage,
//                   child: Image.asset(
//                     "assets/images/message.png",
//                     color: Color.fromRGBO(45, 126, 139, 1),
//                   ),
//                 ),
//                 SizedBox(width: 10.0),
//                 const Text(
//                   "Send Message",
//                   style: TextStyle(
//                     color: Color.fromRGBO(45, 126, 139, 1),
//                     fontWeight: FontWeight.w400,
//                     fontFamily: "GothicA1",
//                     fontStyle: FontStyle.normal,
//                     fontSize: 14.0,
//                   ),
//                   textAlign: TextAlign.center,
//                 )
//               ],
//             ),
//           ),
//           // Use selectedMedia as needed
//         ],
//       ),
//     );
//   }
// }


// // import 'package:flutter/material.dart';

// // class Article extends StatefulWidget {
// //   const Article({super.key});
// //   static const String id = "/Article";

// //   @override
// //   State<Article> createState() => _ArticleState();
// // }

// // class _ArticleState extends State<Article> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("data"),
// //       ),
// //       body: const Text("Article"),
// //     );
// //   }
// // }
