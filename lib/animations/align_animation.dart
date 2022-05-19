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
        backgroundColor: Theme.of(context).colorScheme.secondary,
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
              curve: Curves.easeInOut,
              child: Image.asset('assets/logo.png'),
            ),
            ElevatedButton(
              onPressed: _animated,
              child: Text('Animate'),
              style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).colorScheme.secondary),
            ),
          ],
        ),
      ),
    );
  }

  void _animated() {
    setState(() {
      animate = !animate;
    });
  }
}
