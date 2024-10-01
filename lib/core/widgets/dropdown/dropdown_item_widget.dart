part of 'dropdown_widget.dart';

class _ItemWidget<T> extends StatelessWidget with ThemeMixin, DropdownMixin {
  const _ItemWidget({
    required this.item,
    required this.selected,
    required this.onChanged,
    required this.itemAsString,
  });

  final T item;
  final T? selected;
  final void Function(T item)? onChanged;
  final String Function(T item)? itemAsString;

  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);
    final metrics = getMetrics(context);
    final isSelected = item == selected;

    var fgColor = colors.text;
    var bgColor = Colors.transparent;
    if (isSelected) {
      bgColor = colors.surface;
      fgColor = colors.onSurface;
    }

    return TouchableWidget(
      onPressed: _onChanged,
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.all(metrics.radius),
        ),
        child: Row(
          children: [
            Radio<T>.adaptive(
              value: item,
              groupValue: selected,
              onChanged: _onChanged,
              visualDensity: VisualDensity.compact,
            ),
            TextWidget(
              getItem<T>(item, itemAsString)!,
              color: fgColor,
            ),
          ],
        ),
      ),
    );
  }

  void _onChanged([T? value]) => onChanged?.call(value ?? item);
}
