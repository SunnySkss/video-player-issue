import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:wewatch_video_app/controllers/home_controller/home_controller.dart';
import 'package:wewatch_video_app/screens/video_module/home_top_items.dart';
import 'package:wewatch_video_app/video_player_widgets/video_widget.dart';

class HomeView extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Scaffold(
          body: ListView(
            shrinkWrap: true,
            controller: controller.scrollController,
            children: [
              HomeTopItems(),
              Divider(height: 2,),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  //controller: controller.scrollController,
                  itemCount: controller.listVideos.length+1,
                  itemBuilder: (context,index){
                    if (index == controller.listVideos.length) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Center(
                          child: new Opacity(
                            opacity: controller.isLoading.value==true ? 1 : 0,
                            child: new CircularProgressIndicator(),
                          ),
                        ),
                      );

                    }else{
                      return VideoWidget(orders: controller.listVideos[index],);
                    }


                  }),
            ],
          )
      );
    });
  }

}