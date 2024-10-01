import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:the_menu/core/mixins/dialog_mixin.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';
import 'package:the_menu/core/widgets/bottom_sheet_widget.dart';
import 'package:the_menu/core/widgets/buttons/touchable_widget.dart';
import 'package:the_menu/core/widgets/dropdown/dropdown_mixin.dart';
import 'package:the_menu/core/widgets/spacer_widget.dart';
import 'package:the_menu/core/widgets/text_widget.dart';

part 'dropdown_sheet_widget.dart';
part 'dropdown_item_widget.dart';

class DropdownWidget<T> extends StatelessWidget
    with ThemeMixin, DialogMixin, DropdownMixin {
  const DropdownWidget({
    required this.icon,
    required this.label,
    required this.hintText,
    this.items = const [],
    this.selected,
    this.itemAsString,
    super.key,
  });

  final IconData icon;
  final String label;
  final String hintText;
  final List<T> items;
  final T? selected;
  final String Function(T item)? itemAsString;

  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);

    return TouchableWidget(
      onPressed: () async => openBottomSheet(
        context,
        name: 'dropdown',
        child: _SheetWidget<T>(
          items: items,
          selected: selected,
          itemAsString: itemAsString,
          hintText: hintText,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          const SpacerWidget(
            direction: Axis.horizontal,
            size: SpacerWidgetSize.small,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                label,
                type: TextWidgetType.bodySmall,
                color: colors.textAlt,
              ),
              TextWidget(
                getItem<T>(selected, itemAsString) ?? hintText,
                type: TextWidgetType.titleMedium,
              ),
            ],
          ),
          const SpacerWidget(
            direction: Axis.horizontal,
            size: SpacerWidgetSize.small,
          ),
          const Icon(SolarIconsOutline.altArrowDown),
        ],
      ),
    );
  }
}
