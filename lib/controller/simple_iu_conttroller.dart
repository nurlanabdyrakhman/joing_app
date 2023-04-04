import 'dart:developer';
import 'package:get/get.dart';


import '../models/photos_model.dart';
import '../services/api_service.dart';


class SimpleUIController extends GetxController {
  RxList<PhotosModel> photos = RxList();
  RxBool isLoading = true.obs;
  RxString orderBy = "latest".obs;
  RxString apikey = "YourApiKey".obs;
  var selectedIndex = 0.obs;
  List<String> orders = [
    "latest",
    "popular",
    "oldest",
    "views",
  ];



  /// Get Picture 
  getPictureData() async {
    isLoading.value = true;
    var response = await DioService().getMethod(
        "https://jsonplaceholder.typicode.com/posts?/users/:username/likes=JXZHmpmkPOi2khheI9OeU-Ebzb4TfxsWQMH8FUtlvsw&=");
    photos = RxList();
    if (response.statusCode == 200) {
      response.data.forEach((element) {
        photos.add(PhotosModel.fromJson(element));
      });
      isLoading.value = false;
    }

    log(response.statusCode);
  }


  /// changing order value
  ordersFunc(String newVal) {
    orderBy.value = newVal;
    getPictureData();
  }

  @override
  void onInit() {
    getPictureData();
    super.onInit();
  }
}
//https://jsonplaceholder.typicode.com/posts?/users/:username/likes=JXZHmpmkPOi2khheI9OeU-Ebzb4TfxsWQMH8FUtlvsw&=
//https://api.unsplash.com/photos/?per_page=30&order_by=${orderBy.value}&client_id=$apikey