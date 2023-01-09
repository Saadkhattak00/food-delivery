import'package:get/get.dart';


class ApiClient extends GetConnect implements GetxService{
  late String token;
  final String appbaseURL;
  late Map<String, String> _mainheader;

  ApiClient({required this.appbaseURL}){
    baseUrl = appbaseURL;
    timeout = Duration(seconds:30);
    token = "";
    _mainheader={
      'Content-Type':'Application/json; charset = UFT-8',
      "x-rapidapi-host": "pizza-and-desserts.p.rapidapi.com",
      "x-rapidapi-key": "cfe72a3d90msh4c2dd5d4f59cf83p1b2384jsnc88b07664f72",
      // 'Authorization':'bearer $token',
    };

  }

  Future<Response> getdata(String uri) async {
    try{
      Response response =await get(uri);
      return response;
    }catch(e){
      return Response(statusCode: 1,statusText: e.toString());
    }
  }


}