import 'package:flutter/material.dart';

List<String> images = [
  "lib/EX-3/assets/bird.jpg",
  "lib/EX-3/assets/bird2.jpg",
  "lib/EX-3/assets/insect.jpg",
  "lib/EX-3/assets/girl.jpg",
  "lib/EX-3/assets/man.jpg",
];

void main() => runApp(
  const MaterialApp(debugShowCheckedModeBanner: false, home: ImageGallery()),
);

class ImageGallery extends StatefulWidget {
  const ImageGallery({super.key});

  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  int index = 0;

  void _previous() {
    setState(() {
      // first to last
      if (index == 0) {
        index = images.length - 1;
      } else {
        index = index - 1;
      }
    });
  }

  void _next() {
    setState(() {
      // last to first
      if (index == images.length - 1) {
        index = 0;
      } else {
        index = index + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: _previous,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: _next,
            ),
          ),
        ],
      ),
      // body: Image.asset(images[index]),
      body: Image.asset(
        images[index],
        width: double.infinity,
        height: double.infinity,
        // fills the whole body
        fit: BoxFit.cover,
      ),
    );
  }
}
