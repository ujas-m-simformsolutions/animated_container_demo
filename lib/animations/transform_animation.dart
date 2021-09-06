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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              height: 150,
              width: 150,
              child: FlutterLogo(),
              duration: Duration(seconds: 1),
              transform: Matrix4(
                1,0,0,0,
                0,1,0,0,
                0,0,1,0,
                0,0,0,1,
              )
                ..rotateX(x)
                ..rotateY(y)
                ..rotateZ(z),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    animate = !animate;
                    if(animate){
                      x = 2;
                      y = 2;
                      z = 2;
                    }else{
                      x = 0;
                      y = 0;
                      z = 0;
                    }
                  });
                },
                child: Text('Animate'))
          ],
        ),
      ),
    );
  }
}
