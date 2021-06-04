import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wewatch_video_app/routes_screens.dart';
import 'package:wewatch_video_app/screens/video_module/home_view.dart';

class LandingHomeCOntroller extends GetxController{

  @override
  void onInit(){
    if(Get.arguments!=null && Get.arguments is int){
      changePageInRoot(Get.arguments as int);
    }else{
      changePageInRoot(0);
    }
    super.onInit();
  }
  final currentIndex = 0.obs;

  void changePageInRoot(int _index) {
    currentIndex.value = _index;
  }
  List<Widget> pages = [
    HomeView(),
    HomeView(),
    HomeView(),
    HomeView(),
  ];
  Widget get currentPage => pages[currentIndex.value];
  void changePageOutRoot(int _index) {
    currentIndex.value = _index;
    Get.offNamedUntil(Routes.HOME, (Route route) {
      if (route.settings.name == Routes.HOME) {
        return true;
      }
      return false;
    }, arguments: _index);
  }

}