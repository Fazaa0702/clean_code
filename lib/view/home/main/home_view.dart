import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/todo_controller.dart';
import '../../form/main/form_view.dart';
import '../section/list_section.dart';

class HomeView extends StatelessWidget {
  final TodoController todoController = Get.put(TodoController());

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do List'),
      ),
      body: Column(
        children: [
          const Expanded(
            child: ListSection(),
          ),
          FormView(todoController: todoController),
        ],
      ),
    );
  }
}
