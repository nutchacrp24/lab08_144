import 'package:flutter/material.dart';
import 'package:lab08_144/page/secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Lab08_144"),
          backgroundColor: const Color.fromARGB(255, 158, 224, 255)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is First Page"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ));
              },
              child: const Text("ไปยังหน้าที่ 2"),
            )
          ],
        ),
      ),
    );
  }
}
