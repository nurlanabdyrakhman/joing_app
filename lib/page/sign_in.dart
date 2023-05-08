import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:joing_app/page/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../constants/icon_circule.dart';
import '../constants/text_constant.dart';
import '../widgets/button_widget.dart';

class SignInPage extends StatefulWidget {
  SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  onCangetpage(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton=false;
      });
      await Future.delayed(
        Duration(seconds: 1),
      );
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignUpPage(),
        ),
      );
    }
  }
  bool changeButton = false;
  String email = '';
  final _formKey = GlobalKey<FormState>();
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
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                const SizedBox(
                  height: 52,
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
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          fillColor: Colors.blue,
                          filled: true,
                        ),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'Email adresine gir';
                          }
                          return null;
                        },
                        onChanged: (val) {
                          setState(() {
                            email = val;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          fillColor: Colors.blue,
                          filled: true,
                        ),
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'Password  şifre ile girmeli';
                          } else if (val.length < 7) {
                            return 'Şifre uzunluğu en az 6 olmalidir';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.brown,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            onTap: () => onCangetpage(context),
                            child: const CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.brown,
                              child: Icon(Icons.arrow_forward),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
