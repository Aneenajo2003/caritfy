import 'package:cartify/successpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_animate/flutter_animate.dart';
//
// class PaymentProcessingScreen extends StatefulWidget {
//   const PaymentProcessingScreen({super.key});
//
//   @override
//   State<PaymentProcessingScreen> createState() => _PaymentProcessingScreenState();
// }
//
// class _PaymentProcessingScreenState extends State<PaymentProcessingScreen> {
//   int _currentImageIndex = 0;
//   late AnimationController _controller;
//   late Animation<double> _animation;
//
//   final List<String> _images = [
//     'assets/image/img_33.png',
//     'assets/image/img_34.png',
//     'assets/image/img_35.png',
//     'assets/image/img_36.png',
//   ];
//   Timer? _timer;
//
//
//   @override
//   void initState() {
//     super.initState();
//     _startImageCycling();
//   }
//
//   void _startImageCycling() {
//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       setState(() {
//         _currentImageIndex = (_currentImageIndex + 1) % _images.length;
//       });
//
//       if (_currentImageIndex == _images.length - 1) {
//         timer.cancel();
//         _navigateToNextPage();
//       }
//     });
//   }
//
//   void _navigateToNextPage() {
//     Future.delayed(const Duration(seconds: 1), () {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: (context) => const FadeInAndSlide()),
//       );
//     });
//   }
//
//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 12),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Processing Payment',
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: SizedBox(
//                     child: Image.asset(
//                       fit: BoxFit.fitHeight,
//                       _images[_currentImageIndex],
//                       height: 15,
//                       width: double.infinity,
//                     ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class PaymentSuccessScreen extends StatefulWidget {
  const PaymentSuccessScreen({super.key});

  @override
  State<PaymentSuccessScreen> createState() => _PaymentSuccessScreenState();
}

class _PaymentSuccessScreenState extends State<PaymentSuccessScreen> {
  double _height = 400.0;
  double _width = 600.0;

  @override
  void initState() {
    super.initState();
    // Automatically start the size change animation after the screen loads
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _height = 80.0;
        _width = 80.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSize(
          curve: Curves.easeIn,
          duration: const Duration(seconds: 3),
          child: Container(
            width: _width,
            height: _height,
            child: Image.asset("assets/image/img_37.png"),
          ),
        ),
      ),
    );
  }
}

class FadeInAndSlide extends StatefulWidget {
  const FadeInAndSlide({super.key});

  @override
  State<FadeInAndSlide> createState() => _FadeInAndSlideState();
}

class _FadeInAndSlideState extends State<FadeInAndSlide> {
  String logo = "assets/image/img_47.png";
  bool isDone = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff317773),
        body: Stack(
            alignment: Alignment.center,
            children: [

              Center(
                  child: Image.asset(
                    logo,
                    width: 200,
                  ))
                  .animate()
                  .fadeIn(duration: 100.ms)
                  .then(delay: 100.ms)


                  .then(delay: 100.ms)
                  .then(delay: 500.ms)
                  .scaleXY(end: 10, duration: 400.ms)
                  .then(delay: 100.ms)
                  .callback(callback: (_) {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Successpage()));
              }),

            ],
            ),
        );
    }
}

class ProgressionScreen extends StatefulWidget {
  @override
  _ProgressionScreenState createState() => _ProgressionScreenState();
}

class _ProgressionScreenState extends State<ProgressionScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward().then((_) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const FadeInAndSlide()),
      );
    } );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Processing Payment.....",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25
                ),),
                Center(
                  child:Container(
                    height: 12,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        border: Border.all(width: 0.5)
                    ),
                    child: LinearProgressIndicator(
                      value: _animation.value,
                      backgroundColor: Colors.grey.shade300,
                      valueColor: const AlwaysStoppedAnimation<Color>(Color(0xff317773)),
                    ),
                  ),
                ),
              ],
            ),
            ),
       );
   }
}
