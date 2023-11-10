import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/model/task.dart';

class TaskController extends GetxController {
  final tasklist = <Task>[].obs;
  List<Task> get tasks => tasklist.value;
  TextEditingController? textEditingController;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    textEditingController!.clear();
  }

  void adddata() {
    String text = textEditingController!.text;
    DateTime time = DateTime.now();
    tasklist.add(Task(text, time.day.toString()));
  }

  void deletedata(Task task) {
    tasklist.remove(task);
  }
}
