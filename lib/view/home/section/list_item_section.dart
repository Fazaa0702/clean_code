import 'package:flutter/material.dart';

class ListItemSection extends StatelessWidget {
  final String todoText;

  const ListItemSection({Key? key, required this.todoText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      margin: const EdgeInsets.all(5.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Row(
          children: [
            SizedBox(width: 250, child: Text(todoText)),
          ],
        ),
      ),
    );
  }
}
