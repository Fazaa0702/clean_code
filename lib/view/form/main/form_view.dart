import 'package:clean_code/view/form/section/submit_button_section.dart';
import 'package:clean_code/view/form/section/todo_input_field_section.dart';
import 'package:flutter/material.dart';

import '../../../controller/todo_controller.dart';

class FormView extends StatelessWidget {
  final TodoController todoController;

  const FormView({Key? key, required this.todoController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TodoInputFieldSection(
              textEditingController: todoController.textEditingController,
            ),
          ),
          SubmitButtonSection(onPressed: () => todoController.addTodo()),
        ],
      ),
    );
  }
}
