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
          const SizedBox(height: 32),
          Container(
            decoration: BoxDecoration(boxShadow: const [
              BoxShadow(
                offset: Offset(0, 9),
                blurRadius: 32,
                color: Color(0x1A000000),
              )
            ], color: Colors.white, borderRadius: BorderRadius.circular(16)),
            height: 64,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Row(
              children: [
                Opacity(
                  opacity: 0.3,
                  child: Transform.scale(
                    scale: 1.2,
                    child: const Icon(Icons.search),
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  'Search',
                  style: TextStyle(
                    fontSize: 12,
                    color: kLightText,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
