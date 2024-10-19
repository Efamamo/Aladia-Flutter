import 'package:aladia_flutter_exercise/features/authentication/presentation/widgets/button.dart';
import 'package:aladia_flutter_exercise/features/authentication/presentation/widgets/option.dart';
import 'package:flutter/material.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Signin Default', type: SigninOptions)
Center defaultSignin(BuildContext context) {
  return const Center(
    child: SigninOptions(),
  );
}

class SigninOptions extends StatelessWidget {
  const SigninOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Button(
            borderRadius: 5.0,
            widget: Option(
                text: "Sign in with Google", icon: "assets/icons/google.png")),
        SizedBox(
          height: 30,
        ),
        Button(
          borderRadius: 5.0,
          widget: Option(
            icon: "assets/icons/facebook.png",
            text: "Sign in with Facebook",
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Button(
            borderRadius: 5.0,
            widget: Option(
              icon: "assets/icons/apple.png",
              text: "Sign in with Apple",
            ))
      ],
    );
  }
}
