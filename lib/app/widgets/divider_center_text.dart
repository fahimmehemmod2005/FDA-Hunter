import 'package:flutter/material.dart' show StatelessWidget, Divider, Colors;
import 'package:flutter/widgets.dart';

import '../../core/constant/app_color.dart';
import '../../core/constant/app_text_styles.dart';

class DividerCenterText extends StatelessWidget {
  final String? title;
  const DividerCenterText({
    super.key, this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.white24,
            thickness: 1,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            title ?? "",
            style: AppTextStyles.size14w400(color: AppColor.hint),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.white24,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
