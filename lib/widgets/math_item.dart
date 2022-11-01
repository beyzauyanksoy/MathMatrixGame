import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:math_matrix_game/calculator.dart';

class MathItem extends StatefulWidget {
  const MathItem(
      {super.key,
      required this.mathText,
      required this.score,
      required this.imageUrl});

  final String mathText;
  final String score;
  final String imageUrl;
  @override
  State<MathItem> createState() => _MathItemState();
}

class _MathItemState extends State<MathItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Calculator()),
            );
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xffDeaab9), width: 2),
            borderRadius: BorderRadius.circular(10)),
        height: 110,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        widget.imageUrl,
                        width: 40,
                      ),
                      Text(widget.mathText),
                    ],
                  ),
                  Image.asset(
                    'assets/play-button.png',
                    width: 40,
                  )
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Score:'),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/prize.png',
                          width: 35,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(widget.score),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
