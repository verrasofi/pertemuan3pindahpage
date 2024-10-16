import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pindah Page',
      home: const Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 1"),
      ),
      body: Column(
        children: [
          const Text("Ini adalah Page 1"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Page2()),
              );
            },
            child: const Text("Ke Halaman 2"),
          )
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
      ),
      body: Column(
        children: [
          const Text("Ini adalah Page 2"),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Kembali ke halaman 1
            },
            child: const Text("Kembali ke Halaman 1"),
          )
        ],
      ),
    );
  }
}
