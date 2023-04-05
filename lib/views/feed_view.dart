
import 'package:flutter/material.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
    
          Text(
            "Cart",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32)
          ),
          const Icon(
            Icons.favorite,
            size: 40,
          ),
        ],
      ),
    );
  }
}