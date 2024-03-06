import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_api/model/model_class.dart';
import 'package:http/http.dart' as http;

class PeopleController extends GetxController{
  var userList = <People>[].obs;
  var Loading = true.obs;


  @override
  void onInit() {
    super.onInit();
    getPeopleData();
  }

  Future<void> getPeopleData() async{
    try {
      final url = 'https://6592aba1bb129707198fed35.mockapi.io/api/data';
      final response = await http.get(Uri.parse(url));
      if(response.statusCode == 200){
        final List json = jsonDecode(response.body);
        userList.value = json.map((e)=> People.fromJson(e)).toList();
        Loading.value = false;
        update();
      }else{
        Get.snackbar('Error:', '${response.reasonPhrase}');
      }
    } catch (e) {
      Get.snackbar('Error Loading the Data', '${e.toString()}');
    }
  }
}