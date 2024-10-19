import 'package:aladia_flutter_exercise/widgets/button.dart';
import 'package:aladia_flutter_exercise/widgets/error.dart';
import 'package:aladia_flutter_exercise/widgets/input.dart';
import 'package:aladia_flutter_exercise/widgets/line.dart';
import 'package:aladia_flutter_exercise/layouts/logins.dart';
import 'package:aladia_flutter_exercise/widgets/option.dart';
import 'package:aladia_flutter_exercise/layouts/separator.dart';
import 'package:aladia_flutter_exercise/layouts/signinoptions.dart';
import 'package:aladia_flutter_exercise/layouts/welcome.dart';
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
        name: 'Button',
        useCases: [
          WidgetbookUseCase(
            name: 'Button Default',
            builder: (context) => defaultButton(context),
          ),
        ],
      ),
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
        name: 'Line',
        useCases: [
          WidgetbookUseCase(
            name: 'Line Default',
            builder: (context) => defaultLine(context),
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
    ],
  ),
  WidgetbookCategory(name: 'Layout Components', children: [
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
      name: 'Signin Options',
      useCases: [
        WidgetbookUseCase(
          name: 'Signin Default',
          builder: (context) => defaultSignin(context),
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
    WidgetbookComponent(
      name: 'Login',
      useCases: [
        WidgetbookUseCase(
          name: 'Login Default',
          builder: (context) => defaultLogin(context),
        ),
      ],
    ),
    WidgetbookComponent(
      name: 'Option',
      useCases: [
        WidgetbookUseCase(
          name: 'Option Default',
          builder: (context) => defaultOption(context),
        ),
      ],
    ),
  ])
];
