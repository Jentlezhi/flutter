import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {


  final String imageUrl = "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3202350968,2388474311&fm=26&gp=0.jpg";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Image.asset('assets/images/icon.jpg'),
        SizedBox(height: 30,),
        Container(
          child: FadeInImage(
            placeholder: AssetImage('assets/images/icon.jpg'),
            image: NetworkImage(imageUrl),
          ),
        )
      ],)
    );
  }
}
