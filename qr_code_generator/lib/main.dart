import 'package:flutter/material.dart';
import 'package:qr_code_generator/generate_qr_code.dart';
import 'package:qr_code_generator/scan_qr_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'QR Code Scanner and Generator',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text('QR Code Scanner and Generator'),
        backgroundColor: const Color.fromARGB(255, 72, 136, 231),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>const  ScanQRcode()));
                  });
                },
                child: const Text('Scan QR Code')),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const GenerateQRCode()));
                  });
                },
                child: const Text('Generate QR Code'))
          ],
        ),
      ),
    );
  }
}
