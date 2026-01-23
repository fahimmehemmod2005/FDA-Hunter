import 'package:fdahunter/app/routes/route_name.dart';
import 'package:flutter/material.dart';

class OnboardingViewModel extends ChangeNotifier{
  final PageController pageController = PageController();
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void onPageChanged(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void nextPage(int totalLength, BuildContext context) {
    if (_currentIndex < totalLength - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacementNamed(context, RouteName.loginScreen);
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}