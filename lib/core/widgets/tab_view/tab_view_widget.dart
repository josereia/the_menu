import 'package:flutter/material.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';
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

class _TabViewWidgetState extends State<TabViewWidget> {
  int current = 0;

  void change(int index) => setState(() => current = index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _HeaderWidget(
          current: current,
          tabs: widget.tabs,
          onChanged: change,
        ),
        const SpacerWidget(),
        Expanded(child: widget.children[current]),
      ],
    );
  }
}
