import 'package:flutter/material.dart';
import 'package:lab08_144/page/thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab08_144"),
        backgroundColor: Color.fromARGB(255, 252, 159, 194),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is Second Page"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("ไปยังหน้าที่ 1"),
            ),
            TextFormField(
              controller: _controller,
              decoration: const InputDecoration(labelText: "ชื่อ-นามสกุล"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ThirdPageState(data: _controller.text),
                    ));
              },
              child: const Text("ไปยังหน้าที่ 3"),
            )
          ],
        ),
      ),
    );
  }
}
