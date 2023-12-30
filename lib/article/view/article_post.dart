import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'dart:io';

class Article extends StatefulWidget {
  const Article({super.key});
  static const String id = "/Article";

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  bool showError = false;
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String selectedItem = 'Public';
  List<File> selectedMedia = [];
  TextEditingController articleHeadingController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  final quill.QuillController fqController = quill.QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Article"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            postTypeValidation(),
            articleHeadingWidget(),
            articleImageWidget(),
            articleDescWidget()
          ],
        ),
      ),
    );
  }

  Widget postTypeValidation() {
    return GestureDetector(
      // onTap: () => onPressedOpenBottomSheet(),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(width: 1, color: Colors.blue)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.ads_click),
                    SizedBox(width: 5),
                    Text("Public",
                        // exploreController.privacyOptions.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w700,
                            fontFamily: "GothicA1",
                            fontStyle: FontStyle.normal,
                            fontSize: 12.0)),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              )),
          const SizedBox(width: 20)
        ],
      ),
    );
  }

  Widget articleHeadingWidget() {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: TextFormField(
        controller: articleHeadingController,
        keyboardType: TextInputType.emailAddress,
        autofillHints: const [AutofillHints.email],
        cursorColor: Colors.grey,
        cursorHeight: 20,
        decoration: InputDecoration(
          label: Text(
            "Article Heading *",
            style: TextStyle(color: Colors.grey),
          ),
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 2.0,
            ),
          ),
        ),
        onChanged: (value) {},
      ),
    );
  }

  Widget articleImageWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          overflow: TextOverflow.clip,
          textAlign: TextAlign.start,
          softWrap: true,
          maxLines: 1,
          textScaleFactor: 1,
          text: TextSpan(
            text: "Article Image",
            style: TextStyle(color: Colors.black),
            children: <TextSpan>[
              const TextSpan(text: "*", style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
        Container(
          height: 150,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.cloud),
              Text("Upload Image"),
            ],
          ),
        )
      ],
    );
  }

  Widget articleDescWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // quill.QuillToolbar.basic(controller: fqController),
        // quill.QuillEditor(
        //   padding: const EdgeInsets.all(8),
        //   controller: fqController,
        //   scrollController: ScrollController(),
        //   scrollable: true,
        //   focusNode: FocusNode(),
        //   autoFocus: false,
        //   readOnly: false,
        //   expands: false,
        //   placeholder: 'Add your data here...',
        // ),
      ],
    );
  }

  // Widget articleDescWidget() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [],
  //   );
  // }
}
