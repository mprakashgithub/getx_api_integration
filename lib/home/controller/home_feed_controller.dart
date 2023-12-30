import 'package:get/get.dart';

import '../modules/error_response.dart';

class HomeFeedController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  RxInt count = 0.obs;

  incrementCount() {
    count++;
  }

  Rx<ErrorResponse> errorResponse = ErrorResponse().obs;

  Future<bool> getHomeFeedData() async {
    // var response = await homeFeedGet(user_profile_url);
    var response;

    if (response.statusCode == "200") {
      // var decodedData = decodedBody(response);
      // profileDetailsResponse.value = HomeFeedModel.fromJson(decodedData);
      // profileDetailsResponse.refresh();

      // await writeLocalData(LocalStorageKeys.userImage,
      //     profileDetailsResponse.value.profileImageUrl ?? "");

      refresh();
      return true;
    } else {
      // errorResponse.value = ErrorResponse.fromJson(decodedBody(response));
      return false;
    }
  }
}
