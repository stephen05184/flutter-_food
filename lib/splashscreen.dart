import 'dart:ui';

import 'package:burgerapp/Userdetails.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        gradient: LinearGradient(
          begin: Alignment(-0.898, -1),
          end: Alignment(0.495, 1),
          colors: <Color>[Color(0xFFFF939B), Color(0xFFEF2A39)],
          stops: <double>[0, 0.667],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 100,
            top: 924,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 7,
                sigmaY: 7,
              ),
              child: SizedBox(
                width: 108,
                height: 12,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 282, 0, 0),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  width: 342.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 124),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            'BURGER KING',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                      'assets/images/image_1.png',
                    )),
                  ),
                ),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                        fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Userdetails()),
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
