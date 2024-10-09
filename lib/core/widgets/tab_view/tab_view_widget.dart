import 'package:flutter/material.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';
import 'package:the_menu/core/theme/theme_metrics.dart';
import 'package:the_menu/core/widgets/spacer_widget.dart';
import 'package:the_menu/core/widgets/text_widget.dart';

part 'tab_view_header_widget.dart';

class TabViewWidget extends StatefulWidget {
  const TabViewWidget({
    this.tabs = const [],
    this.children = const [],
    super.key,
  });

  final List<String> tabs;
  final List<Widget> children;

  @override
  State<StatefulWidget> createState() => _TabViewWidgetState();
}

class _TabViewWidgetState extends State<TabViewWidget> with ThemeMixin {
  int current = 0;
  final controller = PageController();

  Future<void> change(int index, ThemeMetricsExt metrics) async {
    setState(() => current = index);
    await controller.animateToPage(
      index,
      curve: metrics.curve,
      duration: metrics.duration,
    );
  }

  @override
  Widget build(BuildContext context) {
    final metrics = getMetrics(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _HeaderWidget(
          current: current,
          tabs: widget.tabs,
          onChanged: (index) async => change(index, metrics),
        ),
        const SpacerWidget(),
        Expanded(
          child: PageView(
            controller: controller,
            allowImplicitScrolling: true,
            onPageChanged: (index) => setState(() => current = index),
            children: widget.children,
          ),
        ),
      ],
    );
  }
}
