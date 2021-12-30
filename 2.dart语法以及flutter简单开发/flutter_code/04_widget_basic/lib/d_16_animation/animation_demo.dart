import 'package:flutter/material.dart';

import 'main.dart';

class AnimationDemo extends StatefulWidget {
  @override
  _AnimationDemoState createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;
  Animation _sizeAnimation;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync:this, duration: Duration(seconds: 1));
    _animationController.addListener(() {
      setState(() {});
    });
    _animation = CurvedAnimation(parent: _animationController, curve: Curves.linear);
    _sizeAnimation = Tween(begin: 40.0, end: 100.0).animate(_animation);
    _animationController.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        _animationController.reverse();
      }else if(status == AnimationStatus.dismissed){
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
    print('build');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: _sizeAnimation.value,
          ),
          SizedBox(height: 40,),
          RaisedButton(
            child: Text(_animationController.isAnimating ? "暂停动画":"开始动画"),
            onPressed: (){
              setState(() {});
              MyNotification().dispatch(context);
              if(_animationController.isAnimating){
                _animationController.stop();
              }else{
                _animationController.forward();
              }
            },
          )
        ],
      ),
    );
  }
}
