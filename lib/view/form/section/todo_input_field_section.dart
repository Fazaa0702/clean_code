import 'package:flutter/material.dart';

class TodoInputFieldSection extends StatelessWidget {
  final TextEditingController textEditingController;

  const TodoInputFieldSection({Key? key, required this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 100,
      minLines: 1,
      maxLength: 200,
      controller: textEditingController,
      decoration: const InputDecoration(
        hintText: 'Enter your to-do',
      ),
    );
  }
}
