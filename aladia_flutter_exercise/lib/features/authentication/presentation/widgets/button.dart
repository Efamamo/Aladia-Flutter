import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Input Field Default', type: Button)
Center defaultButton(BuildContext context) {
  return Center(
      child: SizedBox(
          width: context.knobs.double.slider(label: "Width", max: 200),
          height: context.knobs.double.slider(label: "Height", max: 80),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor:
                  context.knobs.color(label: "Text Color"), // Text color
              backgroundColor:
                  context.knobs.color(label: "Background Color"), // Text color
              side: BorderSide(
                color: context.knobs.color(label: "Border Color"),
              ), // Black border
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(context.knobs.double
                    .slider(label: "Border Radius")), // Border radius
              ),
            ),
            onPressed: () {},
            child: Text(context.knobs
                .string(label: "Text")), // Access the text using widget.widget
          )));
}

class Button extends StatefulWidget {
  final Widget widget; // Store the text parameter
  final onTap;
  final borderRadius;

  const Button(
      {super.key,
      required this.widget,
      this.onTap,
      required this.borderRadius}); // Initialize text in the constructor

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
              borderRadius:
                  BorderRadius.circular(widget.borderRadius), // Border radius
            ),
          ),
          onPressed: widget.onTap,
          child: widget.widget, // Access the text using widget.widget
        ));
  }
}
