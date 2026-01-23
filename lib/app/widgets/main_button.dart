import 'package:flutter/material.dart';
import '../../core/constant/app_color.dart';
import '../../core/constant/app_text_styles.dart';

class MainButton extends StatelessWidget {
  final String? label;
  final VoidCallback? onTap;
  final double? borderRadius;
  const MainButton({
    super.key, 
    this.label, 
    this.onTap, 
    this.borderRadius,
    });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.main,
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius??12)),
      ),
      onPressed: onTap,
      child: Text(
        label ?? "",
        style: AppTextStyles.size16w600(color: AppColor.background),
      ),
    );
  }
}
