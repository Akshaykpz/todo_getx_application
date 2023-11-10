import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:getx_project/controller/task_controller.dart';
import 'package:getx_project/view/add_data.dart';
import 'package:getx_project/view/task_tile.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TaskController taskController = Get.put(TaskController());
    TextTheme text = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(AddDataScreen());
          },
        ),
        body: ListView.builder(
          itemCount: taskController.tasklist.length,
          itemBuilder: (context, index) => taskview(
            size: size.toString(),
            text: text.toString(),
            des: taskController.tasklist[index].task,
            time: taskController.tasklist[index].taskdata,
            press: () {
              taskController.deletedata(taskController.tasklist[index]);
            },
          ),
        ),
      ),
    );
  }
}
