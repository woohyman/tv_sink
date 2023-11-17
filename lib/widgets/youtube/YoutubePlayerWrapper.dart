import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tvSink/widgets/youtube/play_pause_button_bar.dart';
import 'package:tvSink/widgets/youtube/player_state_section.dart';
import 'package:tvSink/widgets/youtube/source_input_section.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../data/youtube/LiveSourceManager.dart';
import 'meta_data_section.dart';

class YoutubePlayerWrapper extends StatefulWidget {
  const YoutubePlayerWrapper({Key? key}) : super(key: key);

  @override
  _YoutubePlayerWrapperState createState() => _YoutubePlayerWrapperState();
}

class _YoutubePlayerWrapperState extends State<YoutubePlayerWrapper> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      params: const YoutubePlayerParams(
        showControls: true,
        mute: false,
        showFullscreenButton: true,
        loop: false,
      ),
    );

    _controller.setFullScreenListener(
      (isFullScreen) {
        log('${isFullScreen ? 'Entered' : 'Exited'} Fullscreen.');
      },
    );

    // print("url =========================>"+LiveSourceManager.instance.getVideoResult().first.url);
    // _controller.loadVideo(LiveSourceManager.instance.getVideoResult().first.url);
    _controller.loadVideo("https://www.youtube.com/watch?v=pAKaPtRI6zY");

    // _controller.loadVideo('https://www.youtube.com/watch?v=tcodrIK2P_I&t=14s');
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerScaffold(
      controller: _controller,
      builder: (context, player) {
        return LayoutBuilder(
          builder: (context, constraints) {
            if (true) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        player,
                        const VideoPositionIndicator(),
                      ],
                    ),
                  ),
                ],
              );
            }

            return ListView(
              children: [
                player,
                const VideoPositionIndicator(),
              ],
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}

///
class VideoPositionIndicator extends StatelessWidget {
  ///
  const VideoPositionIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.ytController;

    return StreamBuilder<YoutubeVideoState>(
      stream: controller.videoStateStream,
      initialData: const YoutubeVideoState(),
      builder: (context, snapshot) {
        final position = snapshot.data?.position.inMilliseconds ?? 0;
        final duration = controller.metadata.duration.inMilliseconds;

        return LinearProgressIndicator(
          value: duration == 0 ? 0 : position / duration,
          minHeight: 1,
        );
      },
    );
  }
}

///
class VideoPositionSeeker extends StatelessWidget {
  ///
  const VideoPositionSeeker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var value = 0.0;

    return Row(
      children: [
        const Text(
          'Seek',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: StreamBuilder<YoutubeVideoState>(
            stream: context.ytController.videoStateStream,
            initialData: const YoutubeVideoState(),
            builder: (context, snapshot) {
              final position = snapshot.data?.position.inSeconds ?? 0;
              final duration = context.ytController.metadata.duration.inSeconds;

              value = position == 0 || duration == 0 ? 0 : position / duration;

              return StatefulBuilder(
                builder: (context, setState) {
                  return Slider(
                    value: value,
                    onChanged: (positionFraction) {
                      value = positionFraction;
                      setState(() {});

                      context.ytController.seekTo(
                        seconds: (value * duration).toDouble(),
                        allowSeekAhead: true,
                      );
                    },
                    min: 0,
                    max: 1,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
