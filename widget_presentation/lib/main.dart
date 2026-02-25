import 'package:flutter/material.dart';

void main() => runApp(const SmoothInteractiveSliverApp());

class SmoothInteractiveSliverApp extends StatelessWidget {
  const SmoothInteractiveSliverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SmoothSliverGridDemo(),
    );
  }
}

class SmoothSliverGridDemo extends StatefulWidget {
  const SmoothSliverGridDemo({super.key});

  @override
  State<SmoothSliverGridDemo> createState() => _SmoothSliverGridDemoState();
}

class _SmoothSliverGridDemoState extends State<SmoothSliverGridDemo> {
  // I'm starting the boxes at a comfortable 120 pixels wide
  double _currentExtent = 120.0;
  double _baseExtent = 120.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverGrid Widget Presentation'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: GestureDetector(
        onScaleStart: (details) {
          // Grab the exact size the moment my fingers hit the screen
          _baseExtent = _currentExtent;
        },
        onScaleUpdate: (details) {
          setState(() {
            // Multiply our starting size by the pinch scale.
            // Pinching out (scale > 1) makes the boxes bigger!
            double newExtent = _baseExtent * details.scale;

            // Have to cap it so the boxes don't get microscopic or massive enough to break the UI
            _currentExtent = newExtent.clamp(50.0, 400.0);
          });
        },
        child: CustomScrollView(
          slivers: <Widget>[
            SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: _currentExtent, // This is what updates smoothly!
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
              delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    return Container(
                      // Just a quick math trick to get a nice gradient of purples
                      color: Colors.deepPurple[100 * ((index % 8) + 1)],
                      alignment: Alignment.center,
                      child: Text(
                        'Grid $index',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    );
                  },
                  // The number of boxes to render
                  childCount: 100
              ),
            ),
          ],
        ),
      ),
    );
  }
}