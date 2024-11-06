import 'package:cartify/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart'; // Import this for AnimationController

import 'home.dart';

class Cancelorder extends StatefulWidget {
  const Cancelorder({super.key});

  @override
  State<Cancelorder> createState() => _CancelorderState();
}

class _CancelorderState extends State<Cancelorder> with SingleTickerProviderStateMixin {
  double _iconSize = 300.0;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _controller.addListener(() {
      setState(() {
        _iconSize = 130.0;
      });
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD9D9D9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 258, left: 80),
              child: AnimatedSize(
                duration: Duration(seconds: 1),
                curve: Curves.easeInOut,
                child: Icon(
                  Icons.cancel_sharp,
                  size: _iconSize,
                  color: Colors.red,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 80),
              child: Text(
                "ORDER FAILED!!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Sen",
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 160,),
            Padding(
              padding: const EdgeInsets.only(left: 75),
              child: SizedBox(
                height: 48,
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Mycart()),
                    );
                  },
                  child: Text(
                    "RETRY",
                    style: TextStyle(
                      color: Color(0xffD9D9D9),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      letterSpacing: 1,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 6,
                    backgroundColor: Color(0xff1C3C3A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 75),
              child: SizedBox(
                height: 48,
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(
                      color: Color(0xff1C3C3A),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      letterSpacing: 1,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 6,
                    backgroundColor: Color(0xffD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
