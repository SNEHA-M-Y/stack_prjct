import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class stackpg extends StatefulWidget {
  const stackpg({super.key});

  @override
  State<stackpg> createState() => _stackpgState();
}

class _stackpgState extends State<stackpg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Photos Collage",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
        ),
      ),
      body: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "images/fantasygirl.jpg",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "images/Butterflyjar.jpg",
                width: 200,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "images/rain.jpeg",
                  width: 150,
                )),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "images/roseflower.jpg",
              height: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 500, 0, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "images/railroad.jpg",
                width: 200,
              ),
            ),
          )
        ],
      ),
    );
  }
}

