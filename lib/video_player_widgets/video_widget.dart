import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:wewatch_video_app/model/orders_model.dart';

import 'VideoPlayerWidget.dart';

class VideoWidget extends StatefulWidget {
  Orders orders;

  VideoWidget({this.orders}) ;

  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}
const ASPECT_RATIO = 3 / 2;

class _VideoWidgetState extends State<VideoWidget> {
  VideoPlayerController _controller;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network("https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4")
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => _controller.pause());

  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: Container(
        color: Colors.grey.shade100,
        //padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(widget.orders.reporterName),
            Container(
              height: 350,
              width: double.infinity,
              child: VideoPlayerWidget(controller: _controller),
            )

          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
