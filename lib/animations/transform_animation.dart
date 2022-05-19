import 'package:flutter/material.dart';

class TransformAnimation extends StatefulWidget {
  @override
  _TransformAnimationState createState() => _TransformAnimationState();
}

class _TransformAnimationState extends State<TransformAnimation> {
  double x = 0;
  double y = 0;
  double z = 0;
  bool animate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transform Animation'),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              height: 150,
              width: 150,
              child: Image.asset(
                'assets/logo.png',
                scale: 0.6,
              ),
              duration: Duration(seconds: 1),
              transform: Matrix4(
                1,
                0,
                0,
                0,
                0,
                1,
                0,
                0,
                0,
                0,
                1,
                0,
                0,
                0,
                0,
                1,
              )
                ..rotateX(x)
                ..rotateY(y)
                ..rotateZ(z),
            ),
            ElevatedButton(
              onPressed: _animate,
              child: Text('Animate'),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).colorScheme.secondary,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _animate() {
    setState(() {
      animate = !animate;
      if (animate) {
        x = 2;
        y = 2;
        z = 2;
      } else {
        x = 0;
        y = 0;
        z = 0;
      }
    });
  }
}
