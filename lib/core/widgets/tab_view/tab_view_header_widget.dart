part of 'tab_view_widget.dart';

class _HeaderWidget extends StatelessWidget with ThemeMixin {
  const _HeaderWidget({
    required this.current,
    required this.tabs,
    required this.onChanged,
  });

  final int current;
  final List<String> tabs;
  final void Function(int index) onChanged;

  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);
    final metrics = getMetrics(context);

    return Container(
      padding: EdgeInsets.all(metrics.small),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.all(metrics.radius),
      ),
      child: SizedBox(
        height: 40,
        child: ListView.separated(
          itemCount: tabs.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (_, __) => const SpacerWidget(
            direction: Axis.horizontal,
            size: SpacerWidgetSize.small,
          ),
          itemBuilder: (context, index) {
            final tab = tabs[index];
            final isActive = index == current;

            return _TabWidget(
              text: tab,
              isActive: isActive,
              onPressed: () => onChanged(index),
            );
          },
        ),
      ),
    );
  }
}

class _TabWidget extends StatelessWidget with ThemeMixin {
  const _TabWidget({
    required this.text,
    required this.isActive,
    required this.onPressed,
  });

  final String text;
  final bool isActive;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = getColors(context);
    final metrics = getMetrics(context);

    var bgColor = colors.surface;
    var fgColor = colors.onSurface;
    var type = TextWidgetType.bodyMedium;
    if (isActive) {
      bgColor = colors.primary;
      fgColor = colors.onPrimary;
      type = TextWidgetType.titleMedium;
    }

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: metrics.small,
          vertical: metrics.small / 2,
        ),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.all(metrics.radius / 1.4),
        ),
        child: TextWidget(text, color: fgColor, type: type),
      ),
    );
  }
}
