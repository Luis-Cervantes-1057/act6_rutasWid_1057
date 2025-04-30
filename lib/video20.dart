import 'package:flutter/material.dart';

//! AnimatedSize

class Video20 extends StatefulWidget {
  const Video20({Key? key}) : super(key: key);

  @override
  State<Video20> createState() => _Video20State();
}

class _Video20State extends State<Video20> {
  double _size = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Size Example'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _size = _size == 300 ? 100 : 300;
            });
          },
          child: Container(
            color: Colors.white,
            child: AnimatedSize(
              curve: Curves.easeIn,
              duration: const Duration(seconds: 1),
              child: FlutterLogo(size: _size),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Video20(),
  ));
}
