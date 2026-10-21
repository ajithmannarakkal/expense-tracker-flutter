import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import 'common_text.dart';

class CommonElevatedButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  const CommonElevatedButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: CommonText(
              text: text,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
