import 'package:get/get.dart';
import '../controller/home_feed_controller.dart';

class HomeFeedBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
        HomeFeedController()); //If there's any argument in controller that will be written like- commonController: Get.find(),
  }
}
