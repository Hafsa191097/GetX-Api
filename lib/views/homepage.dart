import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/model/model_class.dart';

import '../repos/controller.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX - Api'),
        centerTitle: true,
      ),
      body: Container()
    );
  }
}