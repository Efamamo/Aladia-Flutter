import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Input Field Default', type: LoginError)
Center defaultError(BuildContext context) {
  return Center(
      child: LoginError(text: context.knobs.string(label: 'Error Text')));
}

class LoginError extends StatelessWidget {
  final String text;
  const LoginError({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
