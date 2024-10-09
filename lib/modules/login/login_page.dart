import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:the_menu/core/routes/app_routes.dart';
import 'package:the_menu/core/widgets/buttons/button_widget.dart';
import 'package:the_menu/core/widgets/buttons/text_button_widget.dart';
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
          Expanded(child: _FormWidget(onLoginPressed: () async => _login())),
          SafeArea(
            top: false,
            left: false,
            right: false,
            child: TextButtonWidget(
              onPressed: () async => _login(),
              text: 'Ainda não tem cadastro? Cadastre-se já!',
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _login() async => await Get.toNamed<void>(AppRoutes.root);
}

class _FormWidget extends StatelessWidget {
  const _FormWidget({required this.onLoginPressed});

  final void Function() onLoginPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
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
          onEditingComplete: onLoginPressed,
        ),
        const SpacerWidget(),
        ButtonWidget(
          text: 'Login',
          icon: SolarIconsOutline.login,
          onPressed: onLoginPressed,
        ),
      ],
    );
  }
}
