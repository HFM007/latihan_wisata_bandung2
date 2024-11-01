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
          onPressed: () {},
        ),
        title: const Text('First Screen'),
        actions: [
          IconButton(
            onPressed: () {},
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
    var informationTextStyles = const TextStyle(fontFamily: 'Oswald');
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/Farmhouse-Lembang.jpg',
              height: 200,
              width: double.infinity, // Membuat gambar menyesuaikan lebar layar
              fit: BoxFit
                  .cover, // Menyesuaikan gambar agar memenuhi lebar dan tinggi kontainer
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              child: const Text(
                'Farm House Lembang',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Icon(Icons.calendar_today_outlined),
                    Text(
                      'Open Everyday',
                      style: informationTextStyles,
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
                Column(
                  children: [
                    const Icon(Icons.access_time),
                    Text(
                      '09:00 - 20:00',
                      style: informationTextStyles,
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
                Column(
                  children: [
                    const Icon(Icons.monetization_on_outlined),
                    Text(
                      'Rp 25.000',
                      style: informationTextStyles,
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: const Text(
                "Berada di jalur utama Bandung-Lembang, Farmhouse Lembang adalah tempat wisata yang sangat populer. Tempat ini memiliki desain arsitektur ala Eropa yang sangat kental. Pengunjung bisa berfoto-foto di spot-spot menarik yang ada di sini.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
