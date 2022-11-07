import 'package:flutter/material.dart';
import 'package:math_matrix_game/core/app_constant.dart';

class TimeProvider with ChangeNotifier {
  TimeProvider({
    required TickerProvider vsync,
    required this.totalTime,
  }) {
    _animationController = AnimationController(
        vsync: vsync, value: 1.0, duration: Duration(seconds: totalTime));
  }
  late final AnimationController _animationController;
  final int totalTime;

  DialogType dialogType=DialogType.non;
  TimerStatus timerStatus=TimerStatus.restart;

void startTimer(){
  _animationController.reverse();
}
  
  @override
  void dispose() {
   _animationController.dispose();
    super.dispose();
  }
}