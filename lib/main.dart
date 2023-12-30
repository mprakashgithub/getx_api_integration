import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api_app/firstScreen/view/first.dart';

import 'firstScreen/binding/first_binding.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FirstScreen(),
      initialBinding: FirstBinding(),
      initialRoute: AppRoutes.routes.first.name,
      getPages: AppRoutes.routes,
    );
  }
}
