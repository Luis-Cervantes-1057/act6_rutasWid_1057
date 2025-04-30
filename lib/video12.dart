import 'package:flutter/material.dart';

class Video12 extends StatefulWidget {
  const Video12({Key? key}) : super(key: key);

  @override
  State<Video12> createState() => _Video12State();
}

class _Video12State extends State<Video12> with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Icon"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Retorna a la pantalla anterior
          },
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              if (!_isPlay) {
                _controller.forward();
                _isPlay = true;
              } else {
                _controller.reverse();
                _isPlay = false;
              }
            });
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _controller,
            size: 100,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
