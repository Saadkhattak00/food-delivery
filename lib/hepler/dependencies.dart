import 'package:food_delivery/Controllers/Popular_Product_Contoller.dart';
import 'package:food_delivery/data/Api/Api_Client.dart';
import 'package:food_delivery/data/Repository/Popular_Product_repo.dart';
import 'package:food_delivery/utilities/App_constants.dart';
import 'package:get/get.dart';


Future<void> init()async {
//For Api
  Get.lazyPut(() => ApiClient(appbaseURL: "https://rapidapi.com"));
  //for Repository
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  //for Controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  


}