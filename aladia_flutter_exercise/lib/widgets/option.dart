import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Option Default', type: Option)
Center defaultOption(BuildContext context) {
  return const Center(
    child: Option(
      text: "Signin with Facebook",
      icon: 'assets/icons/facebook.png',
    ),
  );
}

class Option extends StatelessWidget {
  final text;
  final icon;
  const Option({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        Image.asset(
          icon,
          width: 20,
          height: 20,
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 16, color: Theme.of(context).colorScheme.primary),
        )
      ],
    );
  }
}
