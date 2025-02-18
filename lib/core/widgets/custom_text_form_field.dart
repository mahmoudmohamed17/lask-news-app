import 'package:flutter/material.dart';
import 'package:lask_news_app/core/utils/app_colors.dart';
import 'package:lask_news_app/core/utils/styles.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.onFieldSubmitted,
    this.onChanged,
    this.textInputType = TextInputType.text,
  });
  final String hintText;
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;
  final TextInputType textInputType;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Styles.regular18,
      onFieldSubmitted: widget.onFieldSubmitted,
      onChanged: widget.onChanged,
      validator: (value) {
        if (value!.isEmpty) {
          return '${widget.hintText} is required';
        } else {
          return null;
        }
      },
      obscureText: widget.hintText == 'Password' ? isVisible : false,
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
        suffixIcon: (widget.hintText == 'Password')
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                icon: Icon(
                  isVisible ? Icons.visibility_off : Icons.visibility,
                  color: Colors.black,
                ))
            : null,
        hintText: widget.hintText,
        hintStyle:
            Styles.regular18.copyWith(color: AppColors.secondaryHeavyTextColor),
        contentPadding: EdgeInsets.all(12),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: AppColors.secondaryColor));
}
