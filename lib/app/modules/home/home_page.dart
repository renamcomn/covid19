import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('MyPage')),

    body: SafeArea(
      child: GetX<HomeController>(
        initState: (state) {
          Get.find<HomeController>().getAll();
        },
        builder: (_) {
          return _.obj.length < 1 ? Center(child: CircularProgressIndicator()) : 
          ListView.builder(
            itemCount: _.obj.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_.obj[index].state.toString()),
                subtitle: Text('Casos: ${_.obj[index].cases.toString()} Mortes: ${_.obj[index].deaths.toString()}'),
              );
            }
          );
        })
      )
    );
  }
}