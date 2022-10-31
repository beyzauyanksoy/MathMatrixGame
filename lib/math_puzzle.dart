import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MathPuzzle extends StatefulWidget {
  const MathPuzzle({super.key});

  @override
  State<MathPuzzle> createState() => _MathPuzzleState();
}

class _MathPuzzleState extends State<MathPuzzle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                color: Color(0xffC05c78),
              ),
              Positioned(
                right: 0,
                child: Image.asset(
                  "assets/Blob.png",
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Image.asset('assets/Group.png'),
              ),
              Positioned(
                  top: 25,
                  left: 10,
                  child: Container(
                    child: Image.asset(
                      'assets/previous.png',
                      width: 40,
                      color: Color(0xffDeaab9),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
