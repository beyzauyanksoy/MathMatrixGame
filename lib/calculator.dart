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
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffC05C78),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  height: 95,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              child: Image.asset(
                                'assets/previous.png',
                                width: 40,
                                color: const Color(0xffDeaab9),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 105,
                            //color: Colors.amber,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  "assets/trophy.png",
                                  width: 30,
                                ),
                                Text(
                                  '125000',
                                  style: TextStyle(
                                      color: Color(0xffDeaab9),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print(isdialog);
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
                        ]),
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
                              backgroundColor: Color(0xffDeaab9),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              builder: (BuildContext context) {
                                return Container(
                                  
                                  height: 400,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        const Text('Modal BottomSheet'),
                                        ElevatedButton(
                                          child:
                                              const Text('Close BottomSheet'),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Text(
                            "CALCULATOR",
                            style: TextStyle(fontSize: 16),
                          ),
                        )),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                      child: const Center(child: Text('Clear')),
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
                      child: const Center(child: Text('icon')),
                    ),
                  ],
                ),
                // GridView.builder(

                //   shrinkWrap: true,
                //     itemCount: ornekListem.length,
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount:
                //          4),
                //     //listenin uzunluğu
                //     itemBuilder: (BuildContext context,index) {
                //       return Container(
                //         margin: EdgeInsets.all(5),
                //         width: 100,
                //         height: 100,
                //         color: Colors.amber,
                //         child: Text(ornekListem[index],style: TextStyle(color: Colors.black),));
                //     })
              ],
            ),
            isdialog == true
                ? Positioned(
                    bottom: 200,
                    left: 120,
                    child: Container(
                      width: 200,
                      color:  Color(0xffDeaab9),
                      child: Column(
                        children: [
                          Text('Game Over !!!'),
                          Text('Your Highest score is 0.0'),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("RESTART",),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  isdialog = false;
                                });
                              },
                              icon: Icon(Icons.delete))
                        ],
                      ),
                    ),
                  )
                : SizedBox(),
            //Calculator()
          ],
        ),
      ),
    );
  }
}
