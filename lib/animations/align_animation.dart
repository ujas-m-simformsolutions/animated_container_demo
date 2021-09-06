import 'package:flutter/material.dart';

class AlignAnimation extends StatefulWidget {
  @override
  _AlignAnimationState createState() => _AlignAnimationState();
}

class _AlignAnimationState extends State<AlignAnimation> {
  bool animate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: 250,
              height: 250,
              alignment: animate ? Alignment.centerLeft : Alignment.centerRight,
              color: Colors.red,
              curve: Curves.easeInOut,
              child: Text(
                'animate',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
