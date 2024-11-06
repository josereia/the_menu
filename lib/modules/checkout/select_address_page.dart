import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:the_menu/core/routes/app_routes.dart';
import 'package:the_menu/core/widgets/app_bars/collapsed_app_bar_widget.dart';
import 'package:the_menu/core/widgets/buttons/button_widget.dart';
import 'package:the_menu/core/widgets/page_widget.dart';
import 'package:the_menu/core/widgets/spacer_widget.dart';
import 'package:the_menu/core/widgets/text_field_widget.dart';
import 'package:get/get.dart';
import 'dart:developer';

class SelectAddress extends StatelessWidget {
  const SelectAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      appBar: const CollapsedAppBarWidget(title: 'Selecionar endereço'),
      navBar: ButtonWidget(
        text: 'Confirmar',
        icon: SolarIconsOutline.checkCircle,
        onPressed: 
            () async => _checkout(),
      ),
      body: Column(
        children: [
          ButtonWidget(
            text: 'Usar minha localização',
            icon: SolarIconsOutline.mapPoint,
            onPressed: () => log('pedir a localização pro usuario', name: 'funcao'),
          ),
          const SpacerWidget(),
          const TextFieldWidget(
            hintText: 'Rua Santa Catarina',
            labelText: 'Digite seu endereço',
            prefixIcon: SolarIconsOutline.mapPoint,
          ),
        ],
      ),
    );
  }

  Future<void> _checkout() async => await Get.toNamed<void>(AppRoutes.checkout);
}
