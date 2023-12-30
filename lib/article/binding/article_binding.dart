import 'package:get/get.dart';

import '../controller/article_controller.dart';

class ArticleBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ArticleController());
  }
}
