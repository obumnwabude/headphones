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
          ),
          const SizedBox(height: 32),
          const Text('Popular', style: TextStyle(color: kDarkBlue)),
          const SizedBox(height: 16),
          SizedBox(
            height: 352,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: kAirpodsBg,
                  ),
                  padding: const EdgeInsets.fromLTRB(32, 32, 32, 16),
                  width: 256,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                  style: TextStyle(
                                      color: kAirpodsBgText, fontSize: 48),
                                  children: [
                                    TextSpan(text: 'AirPods\n'),
                                    TextSpan(
                                      text: 'Max',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Image.asset('assets/images/airpods_max.png')
                        ],
                      ),
                      const SizedBox(height: 32),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Airpods Max',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('N12,000')
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 32),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: kXSevenWavesBg,
                  ),
                  padding: const EdgeInsets.fromLTRB(32, 32, 32, 16),
                  width: 256,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                  style: TextStyle(
                                      color: kXSevenWavesBgText, fontSize: 48),
                                  children: [
                                    TextSpan(text: 'X-Seven\n'),
                                    TextSpan(
                                      text: 'Waves',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Image.asset('assets/images/x_seven_waves.png')
                        ],
                      ),
                      const SizedBox(height: 32),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'X-Seven Waves',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('N22,000')
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          const Text('Recommended', style: TextStyle(color: kDarkBlue)),
          const SizedBox(height: 16),
          SizedBox(
            height: 256,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: kRecommendedBg,
                  ),
                  padding: const EdgeInsets.fromLTRB(32, 32, 32, 16),
                  width: 256,
                  child: const Center(
                    child: Opacity(
                      opacity: 0.6,
                      child: Text(
                        'AirPods Max',
                        style: TextStyle(fontSize: 27),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 32),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: kRecommendedBg,
                  ),
                  padding: const EdgeInsets.fromLTRB(32, 32, 32, 16),
                  width: 256,
                  child: const Center(
                    child: Opacity(
                      opacity: 0.6,
                      child: Text(
                        'AirPods Max',
                        style: TextStyle(fontSize: 27),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
