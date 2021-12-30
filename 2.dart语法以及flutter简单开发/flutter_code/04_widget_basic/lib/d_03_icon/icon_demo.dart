import 'package:flutter/material.dart';

class IconDemo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Center(
          child: Icon(
            Icons.pets,
            size: 100,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Center(
            child: Icon(
              IconData(0xe91d, fontFamily: 'MaterialIcons'),
              size: 100,
              color: Colors.orange,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Center(
            child: Text(
              '\ue91d',
              style: TextStyle(
                  fontFamily: 'MaterialIcons',
                  fontSize: 100,
                  color: Colors.black26),
            ),
          ),
        )
      ],
    ));
  }
}
