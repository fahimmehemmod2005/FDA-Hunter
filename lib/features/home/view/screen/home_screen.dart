import 'package:fdahunter/app/widgets/my_scaffold.dart';
import 'package:fdahunter/core/constant/app_color.dart';
import 'package:fdahunter/core/constant/app_size_box.dart';
import 'package:fdahunter/core/constant/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../widgets/profile_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSizeBox.height5,
              ProfileBar(),
              AppSizeBox.height20,
              Text("Categories",style: AppTextStyles.size28w600(color: AppColor.title)),
              AppSizeBox.height20,
              Text("Enable Notifications",style: AppTextStyles.size24w700(color: AppColor.title )),
            ],
          ),
        ),
      ),
    );
  }
}
