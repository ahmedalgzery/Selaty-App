import 'package:go_router/go_router.dart';
import 'package:selaty/core/widgets/bottom_bar.dart';
import 'package:selaty/features/auth/presentation/views/auth_view.dart';
import 'package:selaty/features/cart/presentation/views/cart_view.dart';
import 'package:selaty/features/category/presentation/views/category_view.dart';
import 'package:selaty/features/home/presentation/views/home_view.dart';
import 'package:selaty/features/login/presentation/views/login_view.dart';
import 'package:selaty/features/onboarding/presentation/views/onbaording_view.dart';
import 'package:selaty/features/password/presentation/views/password_view.dart';
import 'package:selaty/features/password_success/presentation/views/password_success_view.dart';
import 'package:selaty/features/phone/presentation/view/phone_view.dart';
import 'package:selaty/features/product/presentation/views/product_view.dart';
import 'package:selaty/features/profile/presentation/views/profile_view.dart';
import 'package:selaty/features/register/presentation/views/register_view.dart';
import 'package:selaty/features/splash/presentation/views/splash_view.dart';
import 'package:selaty/features/verify_code/presentation/view/verify_code_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: OnboardingView.kOnboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: AuthView.kAuthView,
        builder: (context, state) => const AuthView(),
      ),
      GoRoute(
        path: RegisterView.kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: LoginView.kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: PhoneView.kPhoneView,
        builder: (context, state) => const PhoneView(),
      ),
      GoRoute(
        path: VerifyCodeView.kCodeView,
        builder: (context, state) => const VerifyCodeView(),
      ),
      GoRoute(
        path: PasswordView.kPasswordView,
        builder: (context, state) => const PasswordView(),
      ),
      GoRoute(
        path: PasswordSuccessView.kPasswordSuccessView,
        builder: (context, state) => const PasswordSuccessView(),
      ),
      GoRoute(
        path: CategoryView.kCategoryView,
        builder: (context, state) => const CategoryView(),
      ),
       GoRoute(
        path:BottomBar.kBottomBar,
        builder: (context, state) => const BottomBar(),
      ),
       GoRoute(
        path:ProductView.kProductView,
        builder: (context, state) => const ProductView(),
      ),
        GoRoute(
        path:ProfileView.kProfileView,
        builder: (context, state) => const ProfileView(),
      ),
        GoRoute(
        path:HomeView.kHomeView,
        builder: (context, state) => const HomeView(),
      ),
        GoRoute(
        path:CartView.kCartView,
        builder: (context, state) => const CartView(),
      ),
    ],
  );
}
