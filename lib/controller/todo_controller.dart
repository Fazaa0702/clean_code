import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TodoController extends GetxController {
  var todos = <String>[].obs;
  var textEditingController = TextEditingController();

  void addTodo() {
    if (textEditingController.text.trim().isNotEmpty) {
      todos.add(textEditingController.text);
      textEditingController.clear();
    }
  }
}
