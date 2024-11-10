import 'package:flutter/material.dart';
import 'package:portfolioapp/core/utils/app_color.dart';

import '../shared_functions/shared_functions.dart';
import '../utils/font_size_responsize.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.minLine = 1,
    this.maxLine = 1,
    this.onChanged,
    this.validator,
    this.initialValue,
    this.border,
    this.enabledBorder,
    this.focusBorder,
    this.suffixIcon,
    required this.hintText,
    this.fillColor,
    this.prefix,
    this.obscureText = false,
    this.keyboardType,
    this.controller,
    this.onSaved,
  });

  final String hintText;
  final Widget? prefix;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Color? fillColor;
  final int minLine;
  final int maxLine;
  final void Function(String)? onChanged;
  final String? initialValue;
  final Widget? suffixIcon;
  final bool obscureText;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusBorder;
  final TextEditingController? controller;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        onSaved: onSaved,
        controller: controller,
        obscureText: obscureText,
        obscuringCharacter: "*",
        initialValue: initialValue,
        onChanged: onChanged,
        validator: validator,
        keyboardType: keyboardType,
        maxLines: maxLine,
        minLines: minLine,
        onTapOutside: (e) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        style: TextStyle(

          color: const Color(0xff797979),
          fontSize: getResponsiveFontSize(context: context, fontSize: 21),
          fontWeight: FontWeight.w400,
          fontFamily: "Montserrat",
        ),
        decoration: InputDecoration(
          fillColor: fillColor ?? const Color(0xffFAFAFA),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
              fontFamily: SharedFunctions.determineFontFamily(hintText),
              // color: AppColor.greyColor,
              fontSize: getResponsiveFontSize(context: context, fontSize: 16)),
          enabledBorder:enabledBorder ??  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xffAFAFAF)
            )
          ),
          prefixIcon: prefix,
          suffixIcon: suffixIcon,
          focusedBorder: focusBorder??  OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  color: AppSharedColors.accentOrange
              )
          ),
          //   focusedBorder: focusBorder ??
          //       const OutlineInputBorder(
          //           // borderSide: BorderSide(color: AppColor.primaryColor)),
          //   enabledBorder: enabledBorder ??
          //       const OutlineInputBorder(
          //           borderSide: BorderSide(width: 3, color: Color(0xffFAFAFA))),
          // ),
        ));
  }
}
