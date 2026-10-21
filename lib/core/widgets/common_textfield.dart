import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import 'common_text.dart';

class CommonTextField extends StatefulWidget {
  final String? hintText;
  final String labelText;
  final bool? isPasswordField;
  final TextEditingController controller;
  final IconData prefixIcon;
  final String? errorText;
  final bool? isMandatory;
  final ValueChanged<String>? onChanged;

  const CommonTextField({
    super.key,
    this.hintText,
    required this.labelText,
    required this.controller,
    this.isPasswordField,
    required this.prefixIcon,
    this.errorText,
    this.isMandatory,
    this.onChanged,
  });

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(text: widget.labelText, fontWeight: FontWeight.bold),
            Visibility(
              visible: (widget.isMandatory ?? false),
              child: CommonText(
                text: " *",
                fontWeight: FontWeight.normal,
                color: AppColors.expense,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        TextFormField(
          controller: widget.controller,
          onChanged: widget.onChanged,
          obscureText: (widget.isPasswordField ?? false) && !isVisible,
          autovalidateMode: AutovalidateMode.always,
          decoration: InputDecoration(
            errorText: widget.errorText,
            prefixIcon: Icon(widget.prefixIcon),
            suffixIcon: (widget.isPasswordField ?? false)
                ? InkWell(
                    onTap: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    child: Icon(
                      isVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                    ),
                  )
                : null,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            hintText: widget.hintText,
          ),
        ),
      ],
    );
  }
}
