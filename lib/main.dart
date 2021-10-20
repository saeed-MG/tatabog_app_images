import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.indigo[800],
        title: const Text('لعبة تطابق الصور'),
        centerTitle: true,
      ),
      body: const ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNumber = 7;
  int rightImageNumber = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber == rightImageNumber
              ? 'مبروووووك لقد نجحــت'
              : 'حاول مرة أخـري',
          style: const TextStyle(fontSize: 42.0, color: Colors.white),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeImage();
                    });
                  },
                  child: Image.asset('images/image-$leftImageNumber.png')),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    changeImage();
                  },
                  child: Image.asset('images/image-$rightImageNumber.png')),
            ),
          ],
        )
      ],
    );
  }

  void changeImage() {
    leftImageNumber = Random().nextInt(8) + 1;
    rightImageNumber = Random().nextInt(8) + 1;
  }
}
