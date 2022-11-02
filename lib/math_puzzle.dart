import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'widgets/math_item.dart';
import 'widgets/math_topwidget.dart';

class MathPuzzle extends StatefulWidget {
  const MathPuzzle({super.key});

  @override
  State<MathPuzzle> createState() => _MathPuzzleState();
}

List<String> mathText = [
  "Hesap Makinesi",
  "İşareti tahmin et",
  "Dogru Cevap",
  "Hızlı Hesaplama",
];
List<String> imageUrl = [
  "assets/hourglassColor.png",
  "assets/creativity1.png",
  "assets/check1.png",
  "assets/bolt.png",
];

class _MathPuzzleState extends State<MathPuzzle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MathTopWidget(),
            Container(
              width: 355,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: mathText.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: MathItem(
                        mathText: mathText[index],
                        score: '0',
                        imageUrl: imageUrl[index],
                      ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
