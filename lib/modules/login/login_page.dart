import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:the_menu/core/routes/app_routes.dart';
import 'package:the_menu/core/widgets/buttons/button_widget.dart';
import 'package:the_menu/core/widgets/buttons/text_button.dart';
import 'package:the_menu/core/widgets/image_widget.dart';
import 'package:the_menu/core/widgets/page_widget.dart';
import 'package:the_menu/core/widgets/spacer_widget.dart';
import 'package:the_menu/core/widgets/text_field_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(Object context) {
    return PageWidget(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ImageWidget(width: 80, uri: 'assets/icon.png'),
          const SpacerWidget(size: SpacerWidgetSize.large),
          const SpacerWidget(size: SpacerWidgetSize.large),
          const TextFieldWidget(
            labelText: 'E-mail',
            hintText: 'Digite seu e-mail',
            prefixIcon: SolarIconsOutline.letter,
            keyboardType: TextInputType.emailAddress,
          ),
          const SpacerWidget(size: SpacerWidgetSize.small),
          TextFieldWidget(
            isObscure: true,
            labelText: 'Senha',
            hintText: 'Digite sua senha',
            prefixIcon: SolarIconsOutline.lock,
            textInputAction: TextInputAction.go,
            keyboardType: TextInputType.visiblePassword,
            onEditingComplete: () async => _login(),
          ),
          const SpacerWidget(),
          ButtonWidget(
            text: 'Login',
            icon: SolarIconsOutline.login,
            onPressed: () async => _login(),
          ),
          TextButtonWidget(
            onPressed:() async => _login(),
            text: 'Não tem cadastro?',)
        ],
      ),
    );
  }

  Future<void> _login() async => await Get.toNamed<void>(AppRoutes.root);
}
