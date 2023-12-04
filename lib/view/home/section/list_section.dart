import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/todo_controller.dart';
import 'list_item_section.dart';

class ListSection extends GetView<TodoController> {
  const ListSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
          itemCount: controller.todos.length,
          itemBuilder: (context, index) {
            return ListItemSection(
              todoText: controller.todos[index],
            );
          },
        ));
  }
}
