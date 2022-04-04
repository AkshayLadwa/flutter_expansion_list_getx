// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_expansion_list_getx/app/data/Empolee.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Panel Lists'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          // ignore: prefer_const_constructors
          margin: EdgeInsets.only(top: 20,bottom: 20),
          child: Obx(()=> ExpansionPanelList(
              expansionCallback: ((panelIndex, isExpanded) {
                controller.employee[panelIndex].isExpanded!.value = !isExpanded;
              }),children: controller.employee.map<ExpansionPanel>((Employee item){
                return ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: ((context, isExpanded) {
                    return ListTile(title: Text(item.header!),);                                  
                  }),
                  body: ListTile(title: Text(item.body!),),
                  isExpanded: item.isExpanded!.value
                );
              }).toList()),
          ),
      )
    ),
    );
  }
}
