part of 'dropdown_widget.dart';

class _SheetWidget<T> extends StatelessWidget {
  const _SheetWidget({
    required this.items,
    required this.selected,
    required this.itemAsString,
    required this.hintText,
    this.onChanged,
  });

  final List<T> items;
  final T? selected;
  final String Function(T item)? itemAsString;
  final String hintText;
  final String Function(T item)? onChanged;

  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
      title: hintText,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: items.length,
        separatorBuilder: (_, __) => const SpacerWidget(
          size: SpacerWidgetSize.small,
        ),
        itemBuilder: (context, index) {
          final item = items[index];
          return _ItemWidget<T>(
            item: item,
            selected: selected,
            onChanged: onChanged,
            itemAsString: itemAsString,
          );
        },
      ),
    );
  }
}
