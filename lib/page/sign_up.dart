import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:joing_app/page/login_page.dart';
import '../constants/icon_circule.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  final urlSrc = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCCVOGJBS7_9sfAF92ZpXQYDJmwZFLPT7NLw&usqp=CAU';
  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Developer',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              Card(
                
                margin: const EdgeInsets.only(top: 33,bottom: 22),
                child: Image.network(
                  urlSrc,
                ),
              ),
               const SizedBox(height: 42,),
              Padding(
                padding:  const EdgeInsets.only(bottom: 5),
                child: TextField(
                  controller: nameController,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintStyle: const TextStyle(color: Colors.black),
                    hintText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintStyle: const TextStyle(color: Colors.black),
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              TextField(
                controller: passwordController,
                  obscureText: true,
                decoration: InputDecoration(
                  hintStyle: const TextStyle(color: Colors.black),
                  hintText: 'Possword',
                  filled: true,
                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 63, vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.yellow),
                      borderRadius: BorderRadius.circular(22)),
                  child: const Text('Login'),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.yellow),
                      borderRadius: BorderRadius.circular(22),),
                  child: const Text('Sign In'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
