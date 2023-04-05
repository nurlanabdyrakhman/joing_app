import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:const [
          Text(
            "Chats",
            style:  TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.purple,
            ),
          ),
          Icon(
            Icons.message,
            size: 40,
          ),
        ],
      ),
    );
  }
}
