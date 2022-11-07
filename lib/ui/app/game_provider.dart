import 'package:flutter/material.dart';
import 'package:math_matrix_game/ui/app/time_provider.dart';

import '../../core/app_constant.dart';

class GameProvider extends TimeProvider{
  final GameCategoryType gameCategoryType;

  GameProvider( {required TickerProvider vsync, required this.gameCategoryType })
  :super(vsync: vsync, totalTime: KeyUtil.getTimeUtil(gameCategoryType));

}