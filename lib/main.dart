import 'package:flutter/material.dart';
import 'package:joing_app/firebase_options.dart';
import 'package:joing_app/page/star_page.dart';
import 'package:firebase_core/firebase_core.dart';
void main()async {
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter staj',
        theme: ThemeData.light().copyWith(
          appBarTheme:  const AppBarTheme(
            color: Colors.transparent,
           centerTitle: true,
            elevation: 0,
            
           actionsIconTheme: IconThemeData(color: Colors.cyan)
          ),
        ),
        home:  StarPage(),);
  }
}
