import 'package:flutter/material.dart';
import 'package:food_delivery/Controllers/Popular_Product_Contoller.dart';
import 'package:food_delivery/pages/Food/Popularfooddetails.dart';
import 'package:food_delivery/pages/Food/Recommended_Food_Details.dart';
import 'package:food_delivery/pages/Home/HomeFoodPage.dart';
import 'package:get/get.dart';
import 'hepler/dependencies.dart' as dep;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      home: Home_Food_Page()

      // Home_Food_Page()
    );
  }
}

