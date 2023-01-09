import 'package:food_delivery/utilities/App_constants.dart';
import 'package:get/get.dart';

import '../Api/Api_Client.dart';


class PopularProductRepo extends GetxService{
  final ApiClient apiClient;

  PopularProductRepo({
    required this.apiClient,
});
   Future<Response> getPopularProductList () async {
     return await apiClient.getdata("");
   }

}