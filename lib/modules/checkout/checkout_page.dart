import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:the_menu/core/routes/app_routes.dart';
import 'package:the_menu/core/widgets/app_bars/collapsed_app_bar_widget.dart';
import 'package:the_menu/core/widgets/buttons/button_widget.dart';
import 'package:the_menu/core/widgets/page_widget.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      appBar: const CollapsedAppBarWidget(
        title: 'Dados para entrega',
      ),
      body: Column(
        children: [
          const ButtonWidget(
            text: 'Entrega',
            icon: SolarIconsOutline.scooter,
            bgColor: Colors.transparent,
            fgColor: Colors.black,
            alignment: MainAxisAlignment.start,
          ),
          const ButtonWidget(
            text: 'Retirada',
            icon: SolarIconsOutline.shop,
            bgColor: Colors.transparent,
            fgColor: Colors.black,
            alignment: MainAxisAlignment.start,
          ),
          ButtonWidget(
            text: 'Selecionar endereço',
            icon: SolarIconsOutline.mapPoint,
            bgColor: Colors.transparent,
            fgColor: Colors.black,
            alignment: MainAxisAlignment.spaceBetween,
            sufixIcon: SolarIconsOutline.altArrowRight,
            onPressed: () async => _selectAddress(),
          ),
        ],
      ),
      navBar: const ButtonWidget(
        text: 'Finalizar compra',
        icon: SolarIconsOutline.cartCheck,
      ),
    );
  }

  Future<void> _selectAddress() async => await Get.toNamed<void>(
        AppRoutes.selectAddress,
      );
}
