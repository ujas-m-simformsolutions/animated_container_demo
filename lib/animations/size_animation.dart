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
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: 100,
              height: animate ? 150 : 50,
              child: Image.asset('assets/logo.png'),
              curve: Curves.bounceIn,
            ),
            SizedBox(height: 20),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: animate ? 200 : 350,
              height: 100,
              child: Image.asset('assets/logo-full.png'),
              curve: Curves.bounceIn,
            ),
            ElevatedButton(
              onPressed: _animate,
              child: Text('Animate'),
              style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).colorScheme.secondary),
            ),
          ],
        ),
      ),
    );
  }

  void _animate() {
    setState(() {
      animate = !animate;
    });
  }
}
