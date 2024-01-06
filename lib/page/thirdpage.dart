import 'package:flutter/material.dart';
import 'package:lab08_144/page/firstpage.dart';

class ThirdPageState extends StatefulWidget {
  const ThirdPageState({super.key, required this.data});
  final String data;

  @override
  State<ThirdPageState> createState() => _ThirdPageStateState();
}

class _ThirdPageStateState extends State<ThirdPageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Lab08_144"),
          backgroundColor: Color.fromARGB(255, 255, 253, 155)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is Third Page"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FirstPage(),
                    ));
              },
              child: const Text("ไปยังหน้าที่ 1"),
            ),
            Text(widget.data)
          ],
        ),
      ),
    );
  }
}
