import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerStandard extends StatefulWidget {
  const VideoPlayerStandard({super.key});

  @override
  State<VideoPlayerStandard> createState() => _VideoPlayerStandardState();
}

class _VideoPlayerStandardState extends State<VideoPlayerStandard> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      ),
    )..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);

        setState(() {});
      });
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(_controller),
              ),
            ),
          ),
          const Text(
            "Hello world",
            style: TextStyle(fontSize: 50),
          ),
        ],
      ),
    );
  }
}
