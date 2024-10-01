import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_menu/core/theme/theme_metrics.dart';

mixin DialogMixin {
  Future<void> openBottomSheet(
    BuildContext context, {
    required String name,
    required Widget child,
  }) async {
    final metrics = Theme.of(context).extension<ThemeMetricsExt>()!;

    await Get.bottomSheet<void>(
      child,
      useRootNavigator: true,
      backgroundColor: Colors.transparent,
      exitBottomSheetDuration: metrics.duration,
      enterBottomSheetDuration: metrics.duration,
      settings: RouteSettings(
        name: '${name}_bottom_sheet',
      ),
    );
  }
}
