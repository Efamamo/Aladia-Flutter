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
        isInitiallyExpanded: false,
        useCases: [
          WidgetbookUseCase(
            name: 'Input',
            builder: (context) => defaultInput(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Card',
        isInitiallyExpanded: false,
        useCases: [
          WidgetbookUseCase(
            name: 'Card',
            builder: (context) => defaultCard(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Button',
        isInitiallyExpanded: false,
        useCases: [
          WidgetbookUseCase(
            name: 'Button Default',
            builder: (context) => defaultButton(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Text',
        isInitiallyExpanded: false,
        useCases: [
          WidgetbookUseCase(
            name: 'Text Default',
            builder: (context) => defaultText(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Image',
        isInitiallyExpanded: false,
        useCases: [
          WidgetbookUseCase(
            name: 'Image Default',
            builder: (context) => defaultImage(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'TextButton',
        isInitiallyExpanded: false,
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
        isInitiallyExpanded: false,
        useCases: [
          WidgetbookUseCase(
            name: 'Welcome Default',
            builder: (context) => defaultWelcome(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Welcome Message',
        isInitiallyExpanded: false,
        useCases: [
          WidgetbookUseCase(
            name: 'Welcome Message',
            builder: (context) => defaultWelcomeMessage(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'BG Gradient',
        isInitiallyExpanded: false,
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
        isInitiallyExpanded: false,
        useCases: [
          WidgetbookUseCase(
            name: 'Error Default',
            builder: (context) => defaultError(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Login',
        isInitiallyExpanded: false,
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
        isInitiallyExpanded: false,
        useCases: [
          WidgetbookUseCase(
            name: 'Line Default',
            builder: (context) => defaultLine(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Separator',
        isInitiallyExpanded: false,
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
        isInitiallyExpanded: false,
        useCases: [
          WidgetbookUseCase(
            name: 'Option Default',
            builder: (context) => defaultOption(context),
          ),
        ],
      ),
      WidgetbookComponent(
        name: 'Signin Options',
        isInitiallyExpanded: false,
        useCases: [
          WidgetbookUseCase(
            name: 'Signin Default',
            builder: (context) => defaultSignin(context),
          ),
        ],
      ),
    ],
  ),
  WidgetbookCategory(
    name: 'Terms and Conditions',
    children: [
      WidgetbookComponent(
        name: 'Terms And Conditions',
        isInitiallyExpanded: false,
        useCases: [
          WidgetbookUseCase(
            name: 'Terms Default',
            builder: (context) => defaultTerms(context),
          ),
        ],
      ),
    ],
  ),
];
