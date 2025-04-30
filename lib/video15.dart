import 'package:flutter/material.dart';

//! AnimatedOpacity

class Video15 extends StatefulWidget {
  const Video15({Key? key}) : super(key: key);

  @override
  State<Video15> createState() => _Video15State();
}

class _Video15State extends State<Video15> {
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Opacity"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 2),
              child: const FlutterLogo(size: 100),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
                });
              },
              child: const Text('Fade Logo'),
            ),
          ],
        ),
      ),
    );
  }
}
