import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:the_menu/core/routes/app_routes.dart';
import 'package:the_menu/core/widgets/buttons/button_widget.dart';
import 'package:the_menu/core/widgets/image_widget.dart';
import 'package:the_menu/core/widgets/spacer_widget.dart';
import 'package:the_menu/core/widgets/text_field_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(Object context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ImageWidget(width: 80, uri: 'assets/icon.png'),
          const SpacerWidget(size: SpacerWidgetSize.large),
          const SpacerWidget(size: SpacerWidgetSize.large),
          const FractionallySizedBox(
            widthFactor: 0.8,
            child: TextFieldWidget(
              labelText: 'Usuario',
            ),
          ),
          const FractionallySizedBox(
            widthFactor: 0.8,
            child: TextFieldWidget(
              labelText: 'Senha',
            ),
          ),
          const SpacerWidget(),
          FractionallySizedBox(
            widthFactor: 0.6,
            child: ButtonWidget(
              icon: SolarIconsOutline.login,
              text: 'Login',
              onPressed: () async => Get.toNamed<void>(AppRoutes.root),
            ),
          ),
        ],
      ),
    );
  }
}
