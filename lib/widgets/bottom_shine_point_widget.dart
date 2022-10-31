import 'package:flutter/material.dart';

class bottomShineandPointwidget extends StatelessWidget {
  const bottomShineandPointwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 140,
          height: 60,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20)),
          //color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/trophy.png",
                width: 45,
              ),
              const Text(
                '62',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            "assets/sun.png",
            width: 45,
          ),
        )
      ],
    );
  }
}