import 'package:flutter/material.dart';
import 'package:task_chase/utils/constants/sizes.dart';
import 'package:task_chase/utils/extentions/color_scheme.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText = '',
    this.isPassword = false,
    this.lines = 1,
    this.margin,
    this.controller,
    this.onClickSuffix,
    this.error,
    this.onValidation,
    this.enabled,
    this.readOnly,
    this.suffixIconColor,
  });

  final String? error;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? hintText;
  final bool? isPassword;
  final int? lines;
  final bool? enabled;
  final bool? readOnly;
  final EdgeInsetsGeometry? margin;
  final TextEditingController? controller;
  final Function()? onClickSuffix;
  final String? Function(String?)? onValidation;
  final Color? suffixIconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextFormField(
        controller: controller,
        obscureText: isPassword ?? false,
        autocorrect: false,
        readOnly: readOnly ?? false,
        enabled: enabled ?? true,
        style: Theme.of(context).textTheme.bodyMedium,
        cursorColor: const Color(0xfff0722e),
        cursorErrorColor: const Color(0xfff13b52),
        cursorRadius: const Radius.circular(1),
        cursorWidth: 2,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              color: Theme.of(context).colorScheme.textFieldBorder,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              color: Theme.of(context).colorScheme.textFieldBorder,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              color: Theme.of(context).colorScheme.textFieldBorder,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              color: Theme.of(context).colorScheme.textFieldBorder,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 1,
              color: Color(0xfff13b52),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 1.5,
              color: Colors.red,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          suffixIcon: suffixIcon == null
              ? null
              : GestureDetector(
                  onTap: () => {onClickSuffix?.call()},
                  child: Icon(
                    suffixIcon,
                    size: KSizes.iconMd,
                    color: suffixIconColor ?? Colors.grey,
                  ),
                ),
          prefixIcon: prefixIcon == null
              ? null
              : Icon(
                  prefixIcon,
                  size: KSizes.iconMd,
                ),
          hintText: hintText,
          counter: const SizedBox.shrink(),
          errorText: error,
          errorStyle: const TextStyle(
            fontSize: 10,
            color: Color(0xfff13b52),
            fontWeight: FontWeight.w300,
          ),
        ),
        validator: onValidation,
        minLines: lines,
        maxLines: lines,
      ),
    );
  }
}
