import 'package:animated_container_demo/animations/align_animation.dart';
import 'package:animated_container_demo/animations/decoration_animation.dart';
import 'package:animated_container_demo/animations/margin_animation.dart';
import 'package:animated_container_demo/animations/size_animation.dart';
import 'package:animated_container_demo/animations/transform_animation.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => SizeAnimation(),
                    ),
                  );
                },
                child: Text('Size Animation')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => AlignAnimation(),
                    ),
                  );
                },
                child: Text('Align Animation')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => DecorationAnimation(),
                    ),
                  );
                },
                child: Text('Decoration Animation')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => MarginAnimation(),
                    ),
                  );
                },
                child: Text('Padding Animation')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => TransformAnimation(),
                    ),
                  );
                },
                child: Text('Transform Animation')),
          ],
        ),
      ),
    );
  }
}
