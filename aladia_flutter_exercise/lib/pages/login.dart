import 'package:aladia_flutter_exercise/theme/theme.dart';
import 'package:aladia_flutter_exercise/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:aladia_flutter_exercise/layouts/logins.dart';
import 'package:aladia_flutter_exercise/layouts/separator.dart';
import 'package:aladia_flutter_exercise/layouts/signinoptions.dart';
import 'package:aladia_flutter_exercise/layouts/welcome.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:provider/provider.dart';

@widgetbook.UseCase(name: 'TextButton Default', type: TextButton)
Center defaultTextButton(BuildContext context) {
  return Center(
      child: TextButton(
    onPressed: () {},
    child: Text(context.knobs.string(label: "text")),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.end, // Aligns the button to the right
                  children: [
                    TextButton(
                      onPressed: () {
                        Provider.of<ThemeProvider>(context, listen: false)
                            .toggleTheme();
                      },
                      child: Image.asset(
                        Provider.of<ThemeProvider>(context, listen: false)
                                    .themeData ==
                                lightMode
                            ? 'assets/icons/dark.png' // Image for dark mode
                            : 'assets/icons/light.png', // Image for light mode
                        width: 24, // Adjust the width of the image as needed
                        height: 24, // Adjust the height of the image as needed
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Welcome(),
                const SizedBox(
                  height: 50,
                ),
                const Login(),
                const SizedBox(
                  height: 50,
                ),
                const Separator(),
                const SizedBox(
                  height: 50,
                ),
                const SigninOptions(),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Terms & conditions",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
