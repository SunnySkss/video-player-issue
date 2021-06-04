import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:wewatch_video_app/video_player_widgets/BasicOverlayWidget.dart';

class VideoPlayerWidget extends StatelessWidget {
  final VideoPlayerController controller;

  const VideoPlayerWidget({
    Key key,
    @required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      controller != null && controller.value.initialized
          ? Container(alignment: Alignment.topCenter,
          child: buildVideo())
          : Container(
        height: 200,
        child: Center(child: CircularProgressIndicator()),
      );

  Widget buildVideo() => Stack(
    children: <Widget>[
      buildVideoPlayer(),
     Positioned.fill(child:
      BasicOverlayWidget(controller: controller)),
    //  ),
    ],
  );

  Widget buildVideoPlayer() => AspectRatio(
    aspectRatio: 3.2/2.75,
    child: VisibilityDetector(
        key: ObjectKey(
            controller),
        onVisibilityChanged:
            (visibility) {
          if (visibility
              .visibleFraction ==
              0 ) {
            controller.pause();
          } else if (visibility
              .visibleFraction ==
              1) {
            controller.play();
          }
        },
        child: VideoPlayer(
           controller,
        )),
  );
}
