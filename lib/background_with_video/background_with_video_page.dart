import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

final sampleVideoUri = Uri.parse(
    "https://assets.mixkit.co/videos/preview/mixkit-vertical-shot-of-a-young-woman-with-red-lipstick-dancing-49096-large.mp4");

class BackgroundWithVideoPage extends StatefulWidget {
  const BackgroundWithVideoPage({super.key});

  @override
  _BackgroundWithVideoPageState createState() =>
      _BackgroundWithVideoPageState();
}

class _BackgroundWithVideoPageState extends State<BackgroundWithVideoPage> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    // Video dosyasının URL'sini buraya ekleyin
    _videoPlayerController = VideoPlayerController.networkUrl(
      sampleVideoUri,
    );

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
      //allowFullScreen: true,
      allowMuting: false,
      showControls: false,
      //fullScreenByDefault: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Chewie(
            controller: _chewieController,
          ),
          const Center(
            child: Text(
              "Merhaba, Dünya!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }
}
