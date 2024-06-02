import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_practice/model/cart_model.dart';
import 'package:ui_practice/screens/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Ui Practice',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            //useMaterial3: true,
          ),
          home: const IntroScreen()),
    );
  }
}
