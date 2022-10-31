import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_matrix_game/widgets/topbar.dart';

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
          Topbar(),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration:  BoxDecoration(
                          border: Border.all(color: Colors.black,width: 1.2),
                            // color: Color(0xffEFB78E),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        width: 230,
                        height: 75,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            
                            const Text(
                              'Matematik Bulmacası',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                            Image.asset('assets/calculator.png',width: 30,)
                            
                          ],
                        ),
                        
                      ),
                     
                    ],
                  ),
                  SizedBox(height: 45),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration:  BoxDecoration(
                          border: Border.all(color: Colors.black,width: 1.2),
                            // color: Color(0xffEFB78E),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        width: 230,
                        height: 75,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/calculator.png',width: 30,),
                            const Text(
                              'Matematik Bulmacası',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                            
                            
                          ],
                        ),
                        
                      ),
                     
                    ],
                  ),
                  SizedBox(height: 45),
                    Row(
                    children: [
                      Container(
                        decoration:  BoxDecoration(
                          border: Border.all(color: Colors.black,width: 1.2),
                            // color: Color(0xffEFB78E),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        width: 230,
                        height: 75,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            
                            const Text(
                              'Matematik Bulmacası',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                            Image.asset('assets/calculator.png',width: 30,)
                            
                          ],
                        ),
                        
                      ),
                     
                    ],
                  ),
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
