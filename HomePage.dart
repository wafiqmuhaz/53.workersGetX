// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import "package:flutter/material.dart";
import 'package:get/get.dart';
import '../controller/home_controller.dart';

class HomePage extends StatelessWidget {
  final homeC = Get.put(Hcon());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Worker GetX"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Obx(() {
                return Text(
                  "Terjadi Perubahan ${homeC.dataInt} X",
                  style: TextStyle(fontSize: 20),
                );
              }),
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) => homeC.changeData() ,
                decoration: InputDecoration(
                  labelText: "Data",
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
