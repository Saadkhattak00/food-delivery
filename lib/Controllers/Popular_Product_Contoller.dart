import 'dart:convert';

import 'package:food_delivery/data/Repository/Popular_Product_repo.dart';
import 'package:get/get.dart';

import '../Models/products_model.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;

  PopularProductController({
    required this.popularProductRepo,
});
  List<dynamic> _PopularProductList=[];
  List<dynamic> get PopularProductList => _PopularProductList;
  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();

    if(response.statusCode == 200)
      {
        // print("hello");
        // _PopularProductList=[];
        // _PopularProductList.addAll()
        // ;
        print("food data");
        return jsonDecode(response.body);
      }else{
      print("not data");
    }

  }
}