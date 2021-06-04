import 'package:get/get.dart';
import 'package:wewatch_video_app/controllers/home_controller/home_controller.dart';
import 'package:wewatch_video_app/controllers/landing_home/landing_home_controller.dart';
import 'package:wewatch_video_app/routes_screens.dart';
import 'package:wewatch_video_app/screens/landing_home.dart';
import 'package:wewatch_video_app/screens/video_module/home_view.dart';

class AppPages {
  static const INITIAL= Routes.landing;
  static final routes =[
    GetPage(name: Routes.HOME, page: ()=>HomeView(),
        binding: RootBinding()),
    GetPage(name: Routes.landing, page: ()=>LandingHomeView(),
        binding: RootBinding()),
  ];

}
class RootBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LandingHomeCOntroller>(() => LandingHomeCOntroller());
    Get.lazyPut<HomeController>(() => HomeController());

  }
}