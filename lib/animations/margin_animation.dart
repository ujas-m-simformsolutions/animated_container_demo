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
      ),
      body: Column(
        children: [
          Row(
            children: [
              AnimatedContainer(
                duration: Duration(seconds: 1),
                width: 100,
                height: 100,
                margin: EdgeInsets.all(animate ? 30:15),
                onEnd: (){
                  print('animated container');
                },
                color: Colors.lightGreen,
                curve: Curves.easeInOut,
              ),
              AnimatedContainer(
                duration: Duration(seconds: 1),
                width: 100,
                height: 100,
                margin: EdgeInsets.all(animate ? 30:15),
                color: Colors.deepPurple,
                curve: Curves.easeInOut,
              ),
            ],
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
    );
  }
}
