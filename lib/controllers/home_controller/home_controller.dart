import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wewatch_video_app/model/orders_model.dart';
import 'package:http/http.dart' as httpClient;

class HomeController extends GetxController{
  final listVideos=<Orders>[].obs;
  final isLoading=true.obs;
  final isDone =false.obs;
  final page=1.obs;
  ScrollController scrollController = ScrollController();
  @override
  Future<void> onInit() async{
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent && isDone.value==false) {
        page.obs.value=page.obs.value+1;
        print("value of page"+page.obs.value.toString());
        loadMore();
      }
    });
    getVideosList();
  }
  loadMore() async{
    try{
      isLoading.value=true;
      var data= await getVideosListData();
      if(data.isNotEmpty){
        this.listVideos.value+=data;
      }else {
        this.isDone.value = true;
      }
    }catch(ex){
      this.isDone.value = true;
    }finally{
      isLoading.value = false;
    }
  }

  Future getVideosList({bool showMessage = false}) async {
    await getVideos();
  }
  getVideos() async{
    this.listVideos.value = await getVideosListData();
  }
  static const String BASE_URL="https://wewatch.in/wewatch-live/api/v1/";

  static const String VIDEO_LISTING = BASE_URL+"video-listing";

  Future<List<Orders>> getVideosListData() async {
    String access_token="eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC93ZXdhdGNoLmluXC93ZXdhdGNoLWxpdmVcL2FwaVwvdjFcL2xvZ2luIiwiaWF0IjoxNjE4NzMwNzYwLCJleHAiOjE2MjM5MTQ3NjAsIm5iZiI6MTYxODczMDc2MCwianRpIjoiV1U4RlhEcUk2aU9CVTNWWiIsInN1YiI6MjQ4LCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.9w4a9BWNqeNlYIN61UPFxdaku-I310DUPTqGuC782tE"; // dummy test
    print("token: "+access_token);
    String login_url =
        VIDEO_LISTING+"?page="+page.obs.value.toString()+"&city=Delhi";

    try {
      final response = await httpClient.post(login_url, headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $access_token',
      });
      if(response.statusCode==200){
        print("success");
        print(response.body);
        Data responseData = Data.fromJson(jsonDecode(response.body));
        print("length=="+responseData.orders.length.toString());
        return responseData.orders.obs;
      }
    }catch(ex){
      throw new Exception("sorryyyyyy"+ex);
    }
  }
}