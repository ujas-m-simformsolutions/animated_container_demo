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
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => _navigate(context, SizeAnimation()),
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.secondary),
                child: Text('Size Animation')),
            ElevatedButton(
                onPressed: () => _navigate(context, AlignAnimation()),
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.secondary),
                child: Text('Align Animation')),
            ElevatedButton(
                onPressed: () => _navigate(context, DecorationAnimation()),
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.secondary),
                child: Text('Decoration Animation')),
            ElevatedButton(
                onPressed: () => _navigate(context, MarginAnimation()),
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.secondary),
                child: Text('Margin Animation')),
            ElevatedButton(
                onPressed: () => _navigate(context, TransformAnimation()),
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.secondary),
                child: Text('Transform Animation')),
          ],
        ),
      ),
    );
  }

  void _navigate(BuildContext context, Widget screen) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => screen),
    );
  }
}
