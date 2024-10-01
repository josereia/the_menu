import 'package:flutter/material.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';
import 'package:the_menu/core/theme/theme_metrics.dart';

class PageWidget extends StatelessWidget with ThemeMixin {
  const PageWidget({
    required this.body,
    this.appBar,
    this.navBar,
    this.fabBtn,
    this.padding,
    this.appBarSize,
    super.key,
  });

  final Widget body;
  final Widget? appBar;
  final Widget? navBar;
  final Widget? fabBtn;
  final EdgeInsets? padding;
  final Size? appBarSize;

  @override
  Widget build(BuildContext context) {
    final metrics = getMetrics(context);

    return Scaffold(
      appBar: _getAppBar(metrics, appBarSize),
      bottomNavigationBar: navBar,
      floatingActionButton: fabBtn,
      body: Padding(
        padding: padding ?? EdgeInsets.all(metrics.medium).copyWith(bottom: 0),
        child: Center(child: body),
      ),
    );
  }

  PreferredSize? _getAppBar(ThemeMetricsExt metrics, Size? size) {
    if (appBar != null) {
      return PreferredSize(
        preferredSize: size ?? metrics.appBar,
        child: appBar!,
      );
    }

    return null;
  }
}
