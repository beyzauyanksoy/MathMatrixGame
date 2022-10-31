import 'package:flutter/material.dart';

class Topbar extends StatelessWidget {
  const Topbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image.asset(
            'assets/topWaves.png',
          ),
        ),
        Positioned(
          top: 115,
          right: 50,
          child: Image.asset(
            'assets/ghost.png',
            width: 45,
          ),
        ),
        Positioned(
            child: Image.asset(
          'assets/longbug.png',
          width: 30,
        )),
        Positioned(
          left: 40,
          child: Image.asset(
            'assets/bug.png',
            width: 35,
          ),
        ),
        const Positioned(
          top: 26,
          left: 115,
          child: Text(
            'Math Matrix',
            style: TextStyle(fontSize: 36, color: Colors.white),
          ),
        ),
        const Positioned(
            top: 63,
            left: 105,
            child: Text(
              'Matematik becerilerinizi geliştirin',
              style: TextStyle(
                  color: Color(0xffEFB78E),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ))
      ],
    );
  }
}
