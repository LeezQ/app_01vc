import 'package:app_01vc/common/middlewares/middlewares.dart';
import 'package:app_01vc/pages/application/index.dart';
import 'package:app_01vc/pages/frame/sign_in/index.dart';
import 'package:app_01vc/pages/frame/sign_up/index.dart';
import 'package:app_01vc/pages/frame/welcome/index.dart';
import 'package:app_01vc/pages/my/binding.dart';
import 'package:app_01vc/pages/my/view.dart';
import 'package:app_01vc/pages/projects/index.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;

  static final List<GetPage> routes = [
    // 免登陆
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => WelcomePage(),
      binding: WelcomeBinding(),
      middlewares: [
        RouteWelcomeMiddleware(priority: 1),
      ],
    ),
    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => SignInPage(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: AppRoutes.SIGN_UP,
      page: () => SignUpPage(),
      binding: SignUpBinding(),
    ),

    // 需要登录
    GetPage(
        name: AppRoutes.Application,
        page: () => ApplicationPage(),
        binding: ApplicationBinding(),
        middlewares: [
          RouteAuthMiddleware(priority: 1),
        ],
        children: [
          GetPage(
              name: AppRoutes.Projects,
              page: () => ProjectsPage(),
              binding: ProjectBinding()),
          GetPage(
              name: AppRoutes.My, page: () => MyPage(), binding: MyBinding())
        ]),
  ];

  // static final unknownRoute = GetPage(
  //   name: AppRoutes.NotFound,
  //   page: () => NotfoundView(),
  // );

}
