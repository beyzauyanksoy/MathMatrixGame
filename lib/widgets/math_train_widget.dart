import 'package:flutter/material.dart';

import '../math_puzzle.dart';

class MathTrainwidget extends StatelessWidget {
  MathTrainwidget({
    Key? key,
    required this.imageUrl,
    required this.mathText,
  }) : super(key: key);

  final String imageUrl;
  final String mathText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MathPuzzle()),
            );
          },
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.2),
                // color: Color(0xffEFB78E),
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            width: 230,
            height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  mathText,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                Image.asset(
                  imageUrl,
                  width: 35,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
