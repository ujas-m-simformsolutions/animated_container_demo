import 'package:flutter/material.dart';

class DecorationAnimation extends StatefulWidget {
  @override
  _DecorationAnimationState createState() => _DecorationAnimationState();
}

class _DecorationAnimationState extends State<DecorationAnimation> {
  bool animate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Decoration Animation'),
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
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(animate ? 60 : 15)),
                  gradient: animate
                      ? LinearGradient(
                          colors: [Colors.yellow, Colors.blueAccent],
                        )
                      : LinearGradient(
                          colors: [Colors.green, Colors.pinkAccent],
                        )),
              curve: Curves.easeIn,
            ),
            ElevatedButton(
              onPressed: _animated,
              child: Text('Animate'),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).colorScheme.secondary,
              ),
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
