import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlaySample extends StatefulWidget {
  const VideoPlaySample({super.key});

  @override
  State<VideoPlaySample> createState() => _VideoPlaySampleState();
}

class _VideoPlaySampleState extends State<VideoPlaySample> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    ));
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
  }

  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video player"),
      ),
      body: FutureBuilder(
          future: _initializeVideoPlayerFuture, builder: (context, snapshot){
            if(snapshot.connectionState== ConnectionState.done){
              return AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              );
            }
            else{
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
      }),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          if (_controller.value.isPlaying) {
            _controller.pause();
          } else {
            
            _controller.play();
          }
        });
      },child:Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow,),),

    );
  }
}
