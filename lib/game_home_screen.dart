import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_matrix_game/widgets/topbar.dart';

import 'widgets/bottom_shine_point_widget.dart';
import 'widgets/math_train_widget.dart';
import 'widgets/memory_widget.dart';

class GameHomeScreen extends StatefulWidget {
  const GameHomeScreen({super.key});

  @override
  State<GameHomeScreen> createState() => _GameHomeScreenState();
}

class _GameHomeScreenState extends State<GameHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Topbar(),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  MathTrainwidget(
                    imageUrl: 'assets/calculator.png',
                    mathText: 'Matematik Bulmacası',
                  ),
                  const SizedBox(height: 45),
                  const MemoryWidget(
                    imageUrl: 'assets/hourglass.png',
                    mathText: 'Hafıza Bulmacası',
                  ),
                  const SizedBox(height: 45),
                  MathTrainwidget(
                    imageUrl: 'assets/thinking.png',
                    mathText: 'Beynini Çalıştır',
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 170, left: 20, right: 20),
                    child: bottomShineandPointwidget(),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
