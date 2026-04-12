import 'package:fashion/feature/home/data/models/moddel_details_model.dart';
import 'package:fashion/feature/home/data/models/models_model.dart';
import 'package:fashion/feature/home/ui/home_screen.dart';
import 'package:fashion/feature/home/ui/models_screen.dart';
import 'package:fashion/feature/home/ui/widgets/model_details_section/model_details_screen.dart';
import 'package:fashion/feature/payment/ui/payment_screen.dart';
import 'package:fashion/feature/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static const String splashScreen = "/";
  static const String homeScreen = "home";
  static const String modelsScreen = "models";
  static const String modelsDetails = "modelsDetails";
    static const String paymentScreen = "payment";



  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        name: splashScreen,
        builder: (context, state) => Splash(),
      ),
      GoRoute(
        path: "/home",
        name: homeScreen,
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: "/models",
        name: modelsScreen,
        builder: (context, state) {
          return ModelsScreen(title: state.extra as String?);
        },
      ),
      GoRoute(
        path: "/modelsDetails",
        name: modelsDetails,
        builder: (context, state) => ModelDetailesScreen(
          modelDetailsModel: state.extra as ModelDetailsModel,
        ),
      ),
       GoRoute(
        path: "/payment",
        name: paymentScreen,
        builder: (context, state) => PaymentScreen(
        ),
      ),
    ],
  );
}
