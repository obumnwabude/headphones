import 'package:flutter/material.dart';
import 'package:headphones/colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light, fontFamily: 'Poppins'),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kHomeBg,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 32),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: kDarkBlue, fontSize: 20),
                      children: [
                        TextSpan(text: 'Hi '),
                        TextSpan(
                          text: 'Linda,',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Good to see back,',
                    style: TextStyle(
                      color: kLightText,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/dp.png'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
