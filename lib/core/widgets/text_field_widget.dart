import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';
import 'package:the_menu/core/mixins/theme_mixin.dart';
import 'package:the_menu/core/theme/theme_colors.dart';
import 'package:the_menu/core/widgets/buttons/icon_button_widget.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    required this.hintText,
    required this.labelText,
    required this.prefixIcon,
    this.isObscure = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.controller,
    this.onEditingComplete,
    super.key,
  });

  final bool isObscure;
  final String hintText;
  final String labelText;
  final IconData prefixIcon;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final TextEditingController? controller;
  final void Function()? onEditingComplete;

  @override
  State<StatefulWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> with ThemeMixin {
  bool _isObscure = false;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.isObscure;
  }

  @override
  void didUpdateWidget(covariant TextFieldWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _isObscure = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    final colors = getColors(context);
    final metrics = getMetrics(context);

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.all(metrics.radius / 1.2),
      borderSide: BorderSide(color: colors.border, width: metrics.border),
    );

    return TextField(
      obscureText: _isObscure,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      keyboardAppearance: theme.brightness,
      textInputAction: widget.textInputAction,
      onEditingComplete: widget.onEditingComplete,
      style: theme.textTheme.bodyMedium,
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        hintStyle: theme.textTheme.bodyMedium!.copyWith(color: colors.textAlt),
        filled: true,
        alignLabelWithHint: true,
        fillColor: colors.surface,
        contentPadding: EdgeInsets.zero,
        border: border,
        suffixIcon: _getSuffix(colors),
        prefixIcon: Icon(widget.prefixIcon, color: colors.textAlt),
        enabledBorder: border,
        focusedBorder: border.copyWith(
          borderSide: border.borderSide.copyWith(color: colors.primary),
        ),
        constraints: BoxConstraints(
          minWidth: metrics.field.width,
          maxHeight: metrics.field.height,
        ),
      ),
    );
  }

  Widget? _getSuffix(ThemeColorsExt colors) {
    if (widget.isObscure == false) return null;

    var icon = SolarIconsOutline.eyeClosed;
    if (_isObscure) icon = SolarIconsOutline.eye;

    return IconButtonWidget(
      icon: icon,
      color: colors.textAlt,
      onPressed: () => setState(() => _isObscure = !_isObscure),
    );
  }
}
