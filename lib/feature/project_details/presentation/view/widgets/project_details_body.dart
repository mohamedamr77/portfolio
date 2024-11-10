import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolioapp/core/extentions/screen_size.dart';
import 'package:portfolioapp/core/shared_widget/global_text.dart';
import 'package:video_player/video_player.dart';

import '../../../../../core/shared_functions/launch_url.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/social_service.dart';

class ProjectDetailsBody extends StatefulWidget {
  const ProjectDetailsBody({super.key});

  @override
  State<ProjectDetailsBody> createState() => _ProjectDetailsBodyState();
}

class _ProjectDetailsBodyState extends State<ProjectDetailsBody> {
  late VideoPlayerController _controller;
  bool _isMuted = false;
  bool _isFullScreen = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      'assets/videos/quiz-app.mp4',
    )
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleMute() {
    setState(() {
      _isMuted = !_isMuted;
      _controller.setVolume(_isMuted ? 0 : 1);
    });
  }

  void _toggleFullScreen() {
    setState(() {
      _isFullScreen = !_isFullScreen;
    });
  }

  void _seekForward() {
    final currentPosition = _controller.value.position;
    final newPosition = currentPosition + const Duration(seconds: 10);
    _controller.seekTo(newPosition);
  }

  void _seekBackward() {
    final currentPosition = _controller.value.position;
    final newPosition = currentPosition - const Duration(seconds: 10);
    _controller.seekTo(newPosition);
  }

  void _increaseVolume() {
    final currentVolume = _controller.value.volume;
    final newVolume = (currentVolume + 0.1).clamp(0.0, 1.0);
    _controller.setVolume(newVolume);
  }

  void _decreaseVolume() {
    final currentVolume = _controller.value.volume;
    final newVolume = (currentVolume - 0.1).clamp(0.0, 1.0);
    _controller.setVolume(newVolume);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _controller.value.isInitialized
              ? SizedBox(
              height: 0.7.h,
              child: VideoPlayer(_controller))
              : const CircularProgressIndicator(),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _controller.value.isPlaying ? _controller.pause() : _controller.play();
                  });
                },
                child: Icon(
                  _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                ),
              ),
              ElevatedButton(
                onPressed: _decreaseVolume,
                child: const Icon(Icons.volume_down),
              ),
              ElevatedButton(
                onPressed: _increaseVolume,
                child: const Icon(Icons.volume_up),
              ),
              ElevatedButton(
                onPressed: _seekBackward,
                child: const Icon(Icons.replay_10),
              ),
              ElevatedButton(
                onPressed: _seekForward,
                child: const Icon(Icons.forward_10),
              ),
              ElevatedButton(
                onPressed: _toggleMute,
                child: Icon(
                  _isMuted ? Icons.volume_off : Icons.volume_mute,
                ),
              ),
              // ElevatedButton(
              //   onPressed: _toggleFullScreen,
              //   child: Icon(
              //     _isFullScreen ? Icons.fullscreen_exit : Icons.fullscreen,
              //   ),
              // ),
            ],
          ),
          const SizedBox(height: 20,),
          const GText(content: " The Code In Github", fontSize: 24),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: (){
              launchCustomUrl(url: SocialService.github , context: context );
            },
            child: SvgPicture.asset(
              AppImages.github,
              width: 40,
              height: 40,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}