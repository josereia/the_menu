import 'package:flutter/material.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';
import 'package:the_menu/core/theme/theme_metrics.dart';

class PageWidget extends StatelessWidget with ThemeMixin {
  const PageWidget({
    required this.body,
    this.appBar,
    this.navBar,
    super.key,
  });

  final Widget body;
  final Widget? appBar;
  final Widget? navBar;

  @override
  Widget build(BuildContext context) {
    final metrics = getMetrics(context);

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: _getAppBar(metrics),
      bottomNavigationBar: navBar,
      body: Padding(
        padding: EdgeInsets.all(metrics.medium).copyWith(bottom: 0),
        child: Center(child: body),
      ),
    );
  }

  PreferredSize? _getAppBar(ThemeMetricsExt metrics) {
    if (appBar != null) {
      return PreferredSize(
        preferredSize: metrics.appBar,
        child: appBar!,
      );
    }

    return null;
  }
}
