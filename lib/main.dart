import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const BodyScreen(),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print('Menu button clicked');
          },
        ),
        title: const Text('First Screen'),
        actions: [
          IconButton(
            onPressed: () {
              print('Search button clicked');
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
    );
  }
}

class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Image.asset('assets/images/Farmhouse-Lembang.jpg'),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: const Text(
              'Farm House Lembang',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.calendar_today_outlined),
                    Text('Open Everyday'),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.access_time),
                    Text('09:00 - 20:00'),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.monetization_on_outlined),
                    Text('Rp 25.000'),
                    SizedBox(
                      height: 5,
                      width: 5,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
