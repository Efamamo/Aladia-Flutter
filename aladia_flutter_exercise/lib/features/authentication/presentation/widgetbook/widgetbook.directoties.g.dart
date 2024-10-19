import 'package:aladia_flutter_exercise/features/authentication/presentation/pages/login.dart';
import 'package:aladia_flutter_exercise/features/authentication/presentation/widgets/button.dart';
import 'package:aladia_flutter_exercise/features/authentication/presentation/widgets/error.dart';
import 'package:aladia_flutter_exercise/features/authentication/presentation/widgets/input.dart';
import 'package:aladia_flutter_exercise/features/authentication/presentation/widgets/line.dart';
import 'package:aladia_flutter_exercise/features/authentication/presentation/layouts/logins.dart';
import 'package:aladia_flutter_exercise/features/authentication/presentation/widgets/option.dart';
import 'package:aladia_flutter_exercise/features/authentication/presentation/layouts/separator.dart';
import 'package:aladia_flutter_exercise/features/authentication/presentation/layouts/signinoptions.dart';
import 'package:aladia_flutter_exercise/features/authentication/presentation/layouts/welcome.dart';
import 'package:widgetbook/widgetbook.dart';

final directories = <WidgetbookNode>[
  WidgetbookCategory(
    name: 'Widgets',
    children: [
      WidgetbookComponent(
        name: 'Input',
        useCases: [
          WidgetbookUseCase(
            name: 'Input',
            builder: (context) => defaultInput(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Card',
        useCases: [
          WidgetbookUseCase(
            name: 'Card',
            builder: (context) => defaultCard(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Button',
        useCases: [
          WidgetbookUseCase(
            name: 'Button Default',
            builder: (context) => defaultButton(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Text',
        useCases: [
          WidgetbookUseCase(
            name: 'Text Default',
            builder: (context) => defaultText(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Image',
        useCases: [
          WidgetbookUseCase(
            name: 'Image Default',
            builder: (context) => defaultImage(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'TextButton',
        useCases: [
          WidgetbookUseCase(
            name: 'TextButton Default',
            builder: (context) => defaultTextButton(context),
          ),
        ],
      ),
    ],
  ),
  WidgetbookCategory(
    name: 'Welcome Layout',
    children: [
      WidgetbookComponent(
        name: 'Welcome',
        useCases: [
          WidgetbookUseCase(
            name: 'Welcome Default',
            builder: (context) => defaultWelcome(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Welcome Message',
        useCases: [
          WidgetbookUseCase(
            name: 'Welcome Message',
            builder: (context) => defaultWelcomeMessage(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'BG Gradient',
        useCases: [
          WidgetbookUseCase(
            name: 'BG Gradient Default',
            builder: (context) => defaultBGgradient(context),
          ),
        ],
      ),
    ],
  ),
  WidgetbookCategory(
    name: 'Login Component',
    children: [
      WidgetbookComponent(
        name: 'Error',
        useCases: [
          WidgetbookUseCase(
            name: 'Error Default',
            builder: (context) => defaultError(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Login',
        useCases: [
          WidgetbookUseCase(
            name: 'Login Default',
            builder: (context) => defaultLogin(context),
          ),
        ],
      ),
    ],
  ),
  WidgetbookCategory(
    name: 'Separator',
    children: [
      WidgetbookComponent(
        name: 'Line',
        useCases: [
          WidgetbookUseCase(
            name: 'Line Default',
            builder: (context) => defaultLine(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Separator',
        useCases: [
          WidgetbookUseCase(
            name: 'Separator Default',
            builder: (context) => defaultSeparator(context),
          ),
        ],
      ),
    ],
  ),
  WidgetbookCategory(
    name: 'Sign-in Options',
    children: [
      WidgetbookComponent(
        name: 'Option',
        useCases: [
          WidgetbookUseCase(
            name: 'Option Default',
            builder: (context) => defaultOption(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Signin Options',
        useCases: [
          WidgetbookUseCase(
            name: 'Signin Default',
            builder: (context) => defaultSignin(context),
          ),
        ],
      ),
    ],
  ),
];
