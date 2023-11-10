import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_project/controller/task_controller.dart';

class AddDataScreen extends StatelessWidget {
  AddDataScreen({super.key});

  final TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: EdgeInsets.all(22),
          child: TextField(
            controller: taskController.textEditingController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(220, 50), backgroundColor: Colors.purple),
            onPressed: () {
              taskController.adddata();
            },
            child: const Text(
              "Add",
              style: TextStyle(color: Colors.white),
            ))
      ])),
    );
  }
}
