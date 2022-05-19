import 'package:flutter/material.dart';

class MarginAnimation extends StatefulWidget {
  @override
  _MarginAnimationState createState() => _MarginAnimationState();
}

class _MarginAnimationState extends State<MarginAnimation> {
  bool animate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Margin Animation'),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              AnimatedContainer(
                duration: Duration(seconds: 1),
                width: 100,
                height: 100,
                margin: EdgeInsets.all(animate ? 45 : 15),
                onEnd: () => print('animated container'),
                child: Image.asset('assets/logo.png'),
                curve: Curves.easeInOut,
              ),
              AnimatedContainer(
                duration: Duration(seconds: 1),
                width: 100,
                height: 100,
                margin: EdgeInsets.all(animate ? 45 : 15),
                child: Image.asset('assets/logo.png'),
                curve: Curves.easeInOut,
              ),
            ],
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
    );
  }

  void _animated() {
    setState(() {
      animate = !animate;
    });
  }
}
