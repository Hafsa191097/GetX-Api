import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/model/model_class.dart';

import '../repos/controller.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  
  @override
  Widget build(BuildContext context) {
   final controller = Get.put<PeopleController>(PeopleController());
   final peopleList = controller.userList;
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX - Api'),
        centerTitle: true,
      ),
      body: 
      Obx(() => 
        controller.Loading.value? const Center(child:  CircularProgressIndicator(),)
        : ListView.builder(
          itemCount: peopleList.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Card(
                color: Colors.blueGrey,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(peopleList[index].image.toString()),
                  ),
                  title: Text( peopleList[index].name!),
                  subtitle: Text( peopleList[index].email!),
                ),
              ),
            );
          }
          
        ),
      )
    );
  }
}