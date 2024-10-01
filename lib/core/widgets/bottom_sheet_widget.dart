import 'package:flutter/material.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';
import 'package:the_menu/core/widgets/spacer_widget.dart';
import 'package:the_menu/core/widgets/text_widget.dart';

class BottomSheetWidget extends StatelessWidget with ThemeMixin {
  const BottomSheetWidget({
    required this.title,
    required this.child,
    super.key,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);
    final metrics = getMetrics(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(metrics.medium),
      decoration: BoxDecoration(
        color: colors.background,
        borderRadius: BorderRadius.only(
          topLeft: metrics.radius,
          topRight: metrics.radius,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(child: _HandleWidget()),
          const SpacerWidget(),
          TextWidget(title, type: TextWidgetType.headlineMedium),
          const SpacerWidget(),
          Flexible(child: SafeArea(child: child)),
        ],
      ),
    );
  }
}

class _HandleWidget extends StatelessWidget with ThemeMixin {
  const _HandleWidget();

  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);

    return Container(
      width: 80,
      height: 8,
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
