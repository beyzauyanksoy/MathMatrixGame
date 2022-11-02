import 'package:flutter/material.dart';

class CalculateTopWidget extends StatefulWidget {
  bool isdialog;
   CalculateTopWidget({
    Key? key,
    required this.isdialog
  }) : super(key: key);

  @override
  State<CalculateTopWidget> createState() => _CalculateTopWidgetState();
}

class _CalculateTopWidgetState extends State<CalculateTopWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
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
              print(widget.isdialog);
              setState(() {
              widget.isdialog=true;
              print(widget.isdialog);
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
    );
  }
}
