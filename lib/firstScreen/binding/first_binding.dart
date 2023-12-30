import 'package:get/get.dart';
// import 'package:getx_api_app/home/controller/home_feed_controller.dart';
import '../controller/first_controller.dart';

class FirstBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FirstController());
  }
}


// import 'package:day59/services/networking/ApiService.dart';
// import 'package:day59/services/networking/BaseProvider.dart';
// import 'package:get/instance_manager.dart';

// class AppBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.put(BaseProvider(), permanent: true);
//     Get.put(ApiService(Get.find()), permanent: true);
//   }
// }