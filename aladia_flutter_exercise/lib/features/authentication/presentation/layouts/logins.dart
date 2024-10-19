import 'package:aladia_flutter_exercise/features/authentication/presentation/provider/auth_provider.dart';
import 'package:aladia_flutter_exercise/features/authentication/presentation/provider/theme_provider.dart';
import 'package:aladia_flutter_exercise/core/theme/theme.dart';
import 'package:aladia_flutter_exercise/features/authentication/presentation/widgets/button.dart';
import 'package:aladia_flutter_exercise/features/authentication/presentation/widgets/error.dart';
import 'package:aladia_flutter_exercise/features/authentication/presentation/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgetbook/widgetbook.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Separator Default', type: Login)
Center defaultLogin(BuildContext context) {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Enter your email",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.primary),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: 350,
          height: 50,
          child: Input(
            borderRadius: 5.0,
            obscure: false,
            icon: const Icon(
              Icons.email,
              color: Color.fromARGB(255, 83, 83, 83),
            ),
            text: "E-mail",
            controller: emailController,
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 350,
          height: 50,
          child: Input(
              borderRadius: 5.0,
              icon: const Icon(
                Icons.lock,
                color: Color.fromARGB(255, 83, 83, 83),
              ),
              text: "Password",
              controller: passwordController,
              obscure: true),
        ),
        const SizedBox(height: 15),
        const SizedBox(height: 15),
        SizedBox(
          width: 350,
          height: 50,
          child: Button(
            borderRadius: 5.0,
            onTap: () {},
            widget: Text(
              "Enter",
              style: TextStyle(
                  fontSize: 16, color: Theme.of(context).colorScheme.primary),
            ),
          ),
        )
      ],
    ),
  );
}

@widgetbook.UseCase(name: 'Text Default', type: Login)
Center defaultText(BuildContext context) {
  return Center(
    child: Text(
      context.knobs.string(label: "text"),
      style: TextStyle(
          color: context.knobs.color(label: "color"),
          fontSize: context.knobs.double.slider(label: "font size")),
    ),
  );
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Enter your email",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.primary),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: 350,
          height: 50,
          child: Input(
            borderRadius: 5.0,
            obscure: false,
            icon: const Icon(
              Icons.email,
              color: Color.fromARGB(255, 83, 83, 83),
            ),
            text: "E-mail",
            controller: emailController,
          ),
        ),
        authProvider.emailError != ""
            ? LoginError(text: authProvider.emailError)
            : const SizedBox.shrink(),
        const SizedBox(height: 20),
        SizedBox(
          width: 350,
          height: 50,
          child: Input(
              borderRadius: 5.0,
              icon: const Icon(
                Icons.lock,
                color: Color.fromARGB(255, 83, 83, 83),
              ),
              text: "Password",
              controller: passwordController,
              obscure: true),
        ),
        authProvider.passwordError != ""
            ? LoginError(text: authProvider.passwordError)
            : const SizedBox.shrink(),
        authProvider.serverError != ""
            ? LoginError(text: authProvider.serverError)
            : const SizedBox.shrink(),
        const SizedBox(height: 15),
        authProvider.success != ""
            ? Text(
                authProvider.success,
                style: const TextStyle(color: Colors.blue, fontSize: 18),
              )
            : const SizedBox.shrink(),
        const SizedBox(height: 15),
        SizedBox(
          width: 350,
          height: 50,
          child: Button(
            borderRadius: 5.0,
            onTap: () {
              authProvider.login(
                emailController.text,
                passwordController.text,
              );
            },
            widget: authProvider.isLoading
                ? CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Provider.of<ThemeProvider>(context).themeData ==
                            lightMode
                        ? Colors.black
                        : Colors.white,
                  )
                : Text(
                    "Enter",
                    style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.primary),
                  ),
          ),
        )
      ],
    );
  }
}
