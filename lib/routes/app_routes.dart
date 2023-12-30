import 'package:get/get.dart';
import 'package:getx_api_app/home/binding/home_feed_binding.dart';
import 'package:getx_api_app/home/view/home.dart';

import '../article/binding/article_binding.dart';
import '../article/view/article_post.dart';
import '../firstScreen/view/first.dart';

class AppRoutes {
  // static const initial = FirstScreen.id;

  static final routes = [
    GetPage(
      name: FirstScreen.id,
      page: () => const FirstScreen(),
    ),
    GetPage(
      name: Home.id,
      binding: HomeFeedBinding(),
      page: () => const Home(),
    ),
    GetPage(
      name: Article.id,
      binding: ArticleBinding(),
      page: () => const Article(),
    ),

    // GetPage(
    //   name: OnboardingProfileScreen.id,
    //   bindings: [
    //     ProfileBinding(),
    //   ],
    //   page: () => const OnboardingProfileScreen(),
    //   // page: () => const UpdateProfileScreen(),
    // ),

    // GetPage(
    //   name: LoggedInHomeScreenTabs.id,
    //   page: () => const LoggedInHomeScreenTabs(),
    //   bindings: [
    //     // PaymentBinding
    //     ProfileBinding(),
    //     HomeBinding(),
    //     SearchBinding(),
    //     ChatScreenBinding(),
    //     ChatHistoryBinding(),
    //   ],
    // ),

    // GetPage(
    //   name: QrCodeScannerScreen.id,
    //   page: () => const QrCodeScannerScreen(),
    // ),

    // GetPage(
    //   name: PaymentFinalScreen.id,
    //   binding: CategoryBinding(),
    //   page: () => PaymentFinalScreen(),
    // ),
    // GetPage(
    //   name: CreateOrderScreen.id,
    //   binding: PaymentBinding(
    //     callInstrument: false,
    //     callPaymentMethod: false,
    //   ),
    //   page: () => const CreateOrderScreen(),
    // ),

    // GetPage(
    //   name: KycSelfieScreen.id,
    //   page: () => const KycSelfieScreen(),
    // ),
    // GetPage(
    //   name: AddFavoriteScreen.id,
    //   page: () => const AddFavoriteScreen(),
    // ),

    // GetPage(
    //   name: AddedRecipientScreen.id,
    //   bindings: [
    //     CommonBinding(),
    //     RecipientBindings(),
    //   ],
    //   page: () => AddedRecipientScreen(),
    // ),
  ];
}
