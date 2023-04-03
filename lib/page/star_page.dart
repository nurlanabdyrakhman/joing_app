import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants/icon_circule.dart';
import '../constants/text_constant.dart';
import '../widgets/button_widget.dart';

class StarPage extends StatelessWidget {
  StarPage({super.key});
  TextEditingController textController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ANDROID & IOS APP',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: const CircleAvatar(
                radius: 45,
                child: Icon(
                  Icons.task,
                  size: 45,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Wellcome',
              style: TextStyle(fontSize: 45, color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                iconCircule(
                  color: Colors.blue,
                  child: Icon(
                    Icons.man,
                    color: Colors.brown,
                  ),
                ),
                iconCircule(
                  color: Colors.yellow,
                  child: Icon(
                    Icons.woman,
                    color: Colors.brown,
                  ),
                ),
                iconCircule(
                  color: Colors.green,
                  child: Icon(
                    Icons.family_restroom,
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Column(
                  children: [
                    TextField(
                      controller: textController,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        fillColor: Colors.blue,
                        filled: true,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        fillColor: Colors.blue,
                        filled: true,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.brown,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.brown,
                          child: Icon(Icons.arrow_forward),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
