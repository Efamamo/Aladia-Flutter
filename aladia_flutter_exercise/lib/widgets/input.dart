import 'package:aladia_flutter_exercise/provider/theme_provider.dart';
import 'package:aladia_flutter_exercise/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Input Field Default',
  type: Input,
)
Center defaultInput(BuildContext context) {
  TextEditingController controller = TextEditingController();
  // Define an icon using an enum and knobs with options
  Icon icon =
      context.knobs.list(label: "Icon", options: [const Icon(Icons.email)]);

  return Center(
      child: Input(
    controller: controller,
    icon: icon,
    text: context.knobs.string(label: "text"),
    obscure: context.knobs.boolean(label: "obscure"),
    borderRadius: context.knobs.double
        .slider(label: "border Radius", initialValue: 5, min: 0, max: 50),
  ));
}

class Input extends StatelessWidget {
  final TextEditingController controller;
  final Icon icon;
  final String text;
  final bool obscure;
  final borderRadius;

  const Input(
      {super.key,
      required this.controller,
      required this.icon,
      required this.text,
      required this.obscure,
      required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      controller: controller,
      decoration: InputDecoration(
        label: Row(
          children: [
            icon,
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Color.fromARGB(255, 83, 83, 83),
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide:
              BorderSide.none, // Remove the border for the focused state
        ),

        fillColor: Theme.of(context)
            .colorScheme
            .tertiary, // Set background color to light grey
        filled: true,
      ),
      style: TextStyle(
        color: Provider.of<ThemeProvider>(context, listen: false).themeData ==
                lightMode
            ? Colors.white
            : Colors.black,
      ), // Change text color to white
      cursorColor:
          Provider.of<ThemeProvider>(context, listen: false).themeData ==
                  lightMode
              ? Colors.white
              : Colors.black,
    );
  }
}
