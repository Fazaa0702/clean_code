import 'package:flutter/material.dart';

class SubmitButtonSection extends StatelessWidget {
  final VoidCallback onPressed;

  const SubmitButtonSection({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.send),
      onPressed: onPressed,
    );
  }
}
