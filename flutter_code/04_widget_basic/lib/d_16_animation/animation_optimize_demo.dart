import 'package:flutter/material.dart';

import 'main.dart';

class AnimationOptimizeDemo extends StatefulWidget {
  @override
  _AnimationDemoState createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationOptimizeDemo>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;
  Animation _sizeAnimation;
  Animation _colorAnimation;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(seconds: 2),
        lowerBound: 1,
        upperBound: 100);
//    _animationController.addListener(() {
//      print('addListener');
//      setState(() {});
//    });
//    _animation = CurvedAnimation(parent: _animationController, curve: Curves.linear);
//    _sizeAnimation = Tween(begin: 40.0, end: 100.0).animate(_animationController);
    _colorAnimation = ColorTween(begin: Colors.orange, end: Colors.red)
        .animate(_animationController);
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _animationController.forward();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('state - build');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
//          Icon(
//            Icons.favorite,
//            color: _colorAnimation.value,
//            size: 50,
////            size: _animationController.value,
//          ),
          AnimatedBuilder(
            animation: _animationController,
            builder: (context, child){
              return Icon(
                Icons.favorite,
                color: Colors.red,
                size: _animationController.value,
              );
            },
          ),
//          MyAnimationIcon(_animationController),
//          Icon(
//            Icons.favorite,
//            color: Colors.red,
//            size: _sizeAnimation.value,
//          ),
          SizedBox(
            height: 40,
          ),
          RaisedButton(
            child: Text(_animationController.isAnimating ? "暂停动画" : "开始动画"),
            onPressed: () {
              setState(() {});
              MyNotification().dispatch(context);
              if (_animationController.isAnimating) {
                _animationController.stop();
              } else {
                _animationController.forward();
              }
            },
          )
        ],
      ),
    );
  }
}

class MyAnimationIcon extends AnimatedWidget {
  MyAnimationIcon(Animation anim) : super(listenable: anim);

  @override
  Widget build(BuildContext context) {
    Animation anim = listenable;
    return Icon(
      Icons.favorite,
      color: Colors.red,
      size: anim.value,
    );
  }
}
