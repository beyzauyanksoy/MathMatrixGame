import 'package:flutter/material.dart';

class MemoryWidget extends StatelessWidget {
  const MemoryWidget({
    Key? key,
    required this.imageUrl,
    required this.mathText,
  }) : super(key: key);

  final String imageUrl;
  final String mathText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.2),
                // color: Color(0xffEFB78E),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            width: 230,
            height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  imageUrl,
                  width: 35,
                ),
                Text(
                  mathText,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
