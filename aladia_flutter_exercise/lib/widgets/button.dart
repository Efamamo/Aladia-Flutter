import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Input Field Default', type: Button)
Center defaultButton(BuildContext context) {
  Text text = context.knobs
      .list(label: "Row", options: [Text(context.knobs.string(label: "Text"))]);

  return Center(child: Button(widget: text));
}

class Button extends StatefulWidget {
  final Widget widget; // Store the text parameter
  final onTap;

  const Button(
      {super.key,
      required this.widget,
      this.onTap}); // Initialize text in the constructor

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 350,
        height: 50,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            foregroundColor:
                Theme.of(context).colorScheme.primary, // Text color
            backgroundColor:
                Colors.transparent, // Background color (transparent)
            side: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
            ), // Black border
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5), // Border radius
            ),
          ),
          onPressed: widget.onTap,
          child: widget.widget, // Access the text using widget.widget
        ));
  }
}
