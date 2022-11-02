import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'widgets/calculate_top_widget.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  bool isdialog = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 105,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      //siyah container
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                          ),
                        ),
                      ),
                      //mavi container
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 5,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueAccent,
                          ),
                        ),
                      ),
                      //pembe kısım
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffC05C78),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Container(
                            height: 105,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                      //gesturedetector 1
                                    },
                                    child: Image.asset(
                                      'assets/previous.png',
                                      width: 40,
                                      color: const Color(0xffDeaab9),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/trophy.png",
                                        width: 30,
                                      ),
                                      const Text(
                                        '125000',
                                        style: TextStyle(
                                            color: Color(0xffDeaab9),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: GestureDetector(
                                    onTap: () {
                                      print(isdialog);
                                      //gesturedetector2
                                      setState(() {
                                        isdialog = true;
                                        print(isdialog);
                                      });
                                    },
                                    child: Image.asset(
                                      'assets/pause.png',
                                      width: 48,
                                      color: Color(0xffDeaab9),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              backgroundColor: const Color(0xffDeaab9),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 550,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      // mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        const Padding(
                                          padding: EdgeInsets.only(top: 20),
                                          child: Text(
                                            'Calculator',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 25),
                                          child: SizedBox(
                                            width: 350,
                                            child: Image.asset(
                                                "assets/calculator-intro.gif"),
                                          ),
                                        ),
                                        const Text(
                                          "You need to solve given equation\ncorrectly",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        const Text(
                                          "1.0 for correct answer",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        const Text(
                                          "-1.0 for wrong answer",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: ElevatedButton(
                                            child: const Text('GOT IT !'),
                                            onPressed: () =>
                                                Navigator.pop(context),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: const Text(
                            "CALCULATOR",
                            style: TextStyle(fontSize: 16),
                          ),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "7",
                            style: TextStyle(fontSize: 35),
                          ),
                          Text("-", style: TextStyle(fontSize: 35)),
                          Text("7", style: TextStyle(fontSize: 35))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0XFFDEAAB9),
                            borderRadius: BorderRadius.circular(30)),
                        width: 335,
                        height: 60,
                      ),
                    )
                  ],
                ),
                GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    mainAxisExtent: 90,
                    childAspectRatio: 1,
                  ),
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 4,
                            offset: Offset(4, 4),
                          ),
                        ],
                        shape: BoxShape.circle,
                        color: Colors.white60,
                      ),
                      child: const Center(child: Text('7')),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 4,
                            offset: Offset(4, 4),
                          ),
                        ],
                        shape: BoxShape.circle,
                        color: Colors.white60,
                      ),
                      child: const Center(child: Text('8')),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(4, 4),
                        ),
                      ], color: Colors.white60, shape: BoxShape.circle
                          // borderRadius: BorderRadius.circular(10),

                          ),
                      child: const Center(child: Text('9')),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(4, 4),
                        ),
                      ], color: Colors.white60, shape: BoxShape.circle),
                      child: const Center(child: Text('4')),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(4, 4),
                        ),
                      ], color: Colors.white60, shape: BoxShape.circle),
                      child: const Center(child: Text('5')),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(4, 4),
                        ),
                      ], color: Colors.white60, shape: BoxShape.circle),
                      child: const Center(child: Text('6')),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(4, 4),
                        ),
                      ], color: Colors.white60, shape: BoxShape.circle),
                      child: const Center(child: Text('1')),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(4, 4),
                        ),
                      ], color: Colors.white60, shape: BoxShape.circle),
                      child: const Center(child: Text('2')),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(4, 4),
                        ),
                      ], color: Colors.white60, shape: BoxShape.circle),
                      child: const Center(child: Text('3')),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(4, 4),
                        ),
                      ], color: Color(0xffDEAAB9), shape: BoxShape.circle),
                      child: const Center(
                          child: Text(
                        'Clear',
                        style: TextStyle(
                            color: Color(0xffd62d65),
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(4, 4),
                        ),
                      ], color: Colors.white60, shape: BoxShape.circle),
                      child: const Center(child: Text('0')),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(4, 4),
                        ),
                      ], color: Color(0xffDEAAB9), shape: BoxShape.circle),
                      child: Center(
                          child: Image.asset(
                        'assets/delete1.png',
                        width: 35,
                      )),
                    ),
                  ],
                ),
              ],
            ),
            isdialog == true
                ? Positioned(
                    bottom: 200,
                    left: 90,
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffDeaab9),
                          borderRadius: BorderRadius.circular(20)),
                      width: 250,
                      height: 135,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Game Over !!!',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          const Text(
                            'Your Highest score is 0.0',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.black),
                                onPressed: () {},
                                child: const Text(
                                  "RESTART",
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  width: 42,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isdialog = false;
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      size: 28,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                : const SizedBox(),
            //Calculator()
          ],
        ),
      ),
    );
  }
}
