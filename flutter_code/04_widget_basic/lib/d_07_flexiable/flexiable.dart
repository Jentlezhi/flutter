import 'package:flutter/material.dart';

class FlexibleDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.cyan,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.teal,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.indigo,
            ),
          ),
        ],
      ),
    );
  }
}
