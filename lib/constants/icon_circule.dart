import 'package:flutter/material.dart';

class iconCircule extends StatelessWidget {
  const iconCircule({
    super.key, required this.color, required this.child, 
  });
  final Color color;
  final Widget child;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child:  Card(
        child: Icon(Icons.man,color: Colors.brown,),
        shape: StadiumBorder(),
        color: color,
      ),
    );
  }
}
