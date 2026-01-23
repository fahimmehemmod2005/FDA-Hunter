import 'package:fdahunter/features/auth/presentation/viewmodel/category_view_model.dart';
import 'package:fdahunter/features/auth/presentation/viewmodel/create_account_view_model.dart';
import 'package:fdahunter/features/auth/presentation/viewmodel/login_view_model.dart';
import 'package:fdahunter/features/onboarding/viewmodel/onboarding_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppViewModels {
  static final List<SingleChildWidget> viewModels = [
    ChangeNotifierProvider<LoginViewModel>(
      create: (_) => LoginViewModel(),
    ),ChangeNotifierProvider<CreateAccountViewModel>(
      create: (_) => CreateAccountViewModel(),
    ),ChangeNotifierProvider<CategoryViewModel>(
      create: (_) => CategoryViewModel(),
    ),ChangeNotifierProvider<OnboardingViewModel>(
      create: (_) => OnboardingViewModel(),
    ),
  ];
}
