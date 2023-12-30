import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class FirstController extends GetxController {
  RxList photoList = [].obs;
  Future<void> getPhotoData() async {
    try {
      var request = http.Request(
          'GET', Uri.parse('https://jsonplaceholder.typicode.com/photos'));
      http.StreamedResponse response = await request.send();
      if (response.statusCode == 200) {
        var data = await response.stream.bytesToString();
        var map = json.decode(data);
        map.forEach((element) {
          photoList.add(element);
        });
      } else {
        debugPrint(response.reasonPhrase);
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
