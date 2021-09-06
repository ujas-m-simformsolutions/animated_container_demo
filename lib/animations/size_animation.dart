import 'package:flutter/material.dart';

class SizeAnimation extends StatefulWidget {
  @override
  _SizeAnimationState createState() => _SizeAnimationState();
}

class _SizeAnimationState extends State<SizeAnimation> {

  bool animate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Size Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: 100,
              height: animate ? 100 : 50,
              color: Colors.red,
              curve: Curves.bounceIn,
            ),
            SizedBox(height: 20),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: animate ? 100 : 50,
              height: 100,
              color: Colors.lightGreen,
              curve: Curves.bounceIn,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  animate = !animate;
                });
              },
              child: Text('Animate'),
            ),
          ],
        ),
      ),
    );
  }
}
