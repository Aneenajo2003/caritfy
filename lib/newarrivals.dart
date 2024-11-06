//
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:cartify/popular.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'home.dart';
//
// class Newarrivals extends StatelessWidget {
//   Newarrivals({super.key});
//  CarouselController carouselController = CarouselController();
//   List<String> featuredImages=[
//     "assets/image/img_26.png",
//     "assets/image/img_27.png",
//     "assets/image/img_28.png",
//
//   ];
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back_sharp,
//             color: Color(0xFF317773),
//           ),
//           onPressed: () {
//             Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
//           },
//         ),
//         centerTitle: true,
//         title: Text(
//           "New Arrivals",
//           style: TextStyle(
//             color: Color(0xff2C2D2E),
//             fontWeight: FontWeight.bold,
//             fontFamily: "Sen",
//             fontSize: 20,
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 35.0,right: 35),
//                 child: Stack(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 8.0),
//                       child: Container(
//                           height: 360,
//                           width: 340,
//                           decoration: BoxDecoration(
//                             color: Colors.transparent,
//                           ),
//                           child: Stack(
//                             children: [
//                               CarouselSlider(
//                                 carouselController: carouselController, // Give the controller
//                                 options: CarouselOptions(
//                                   autoPlay: true,
//                                   height: 450,
//                                 ),
//                                 items: featuredImages.map((featuredImage) {
//                                   return Padding(
//                                     padding: EdgeInsets.only(left: 7),
//                                     child: Image.asset(featuredImage,height: 400,),
//                                   );
//                                 }).toList(),
//                               ),
//                               Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: IconButton(
//                                   onPressed: () {
//                                     // Use the controller to change the current page
//                                     carouselController.previousPage();
//                                   },
//                                   icon: Icon(Icons.arrow_back_ios),
//                                 ),
//                               ),
//                               Align(
//                                 alignment: Alignment.centerRight,
//                                 child: IconButton(
//                                   onPressed: () {
//                                     // Use the controller to change the current page
//                                     carouselController.nextPage();
//                                   },
//                                   icon: Icon(Icons.arrow_forward_ios),
//                                 ),
//                               ),
//                             ],
//                           )),
//                     ),
//
//                     // Row(
//                     //   children: [
//                     //     Padding(
//                     //       padding: const EdgeInsets.only(left: 10.0),
//                     //       child: Icon(Icons.arrow_back_ios,size: 30,),
//                     //     ),
//                     //     Padding(
//                     //       padding: const EdgeInsets.only(left: 18.0,),
//                     //       child: Container(
//                     //         height: 340,
//                     //         width: 220,
//                     //         decoration: BoxDecoration(
//                     //             color: Colors.blue,
//                     //           image: DecorationImage(image: AssetImage("assets/image/img_10.png",),fit: BoxFit.cover),
//                     //
//                     //         ),
//                     //       ),
//                     //     ),
//                     //     Padding(
//                     //       padding: const EdgeInsets.only(left: 20.0),
//                     //       child: Icon(Icons.arrow_forward_ios,size: 30,),
//                     //     ),
//                     //   ],
//                     // ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20,),
//               Stack(
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ProductItems(
//                         imageString: "assets/image/img_29.png",
//                         brand: 'Roadster',
//                         model: 'Slim Fit Shirt',
//                         newPrice: 3500,
//                         oldPrice: 4000,
//                       ),
//                       SizedBox(height: 15),
//                       ProductItems(
//                         imageString: "assets/image/img_30.png",
//                         brand: 'Allen Solly',
//                         model: 'Casual T-Shirt',
//                         newPrice: 2500,
//                         oldPrice: 4000,
//                       ),
//                     ],
//                   ),
//                   Positioned(
//                     top: 5,
//                     left: 150,
//                     child: Icon(
//                       Icons.favorite_border,
//                       color: Color(0xFF317773),
//                     ),
//                   ),
//                   Positioned(
//                     top: 5,
//                     right: 15,
//                     child: Icon(
//                       Icons.favorite_border,
//                       color: Color(0xFF317773),
//                     ),
//                   ),
//                 ],
//               ),
//
//               SizedBox(height: 30,),
//               Stack(
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ProductItems(
//                         imageString: "assets/image/img_6.png",
//                         brand: 'Nike',
//                         model: 'Nike Impact 4V',
//                         newPrice: 6000,
//                         oldPrice: 7000,
//                       ),
//                       SizedBox(height: 15),
//                       ProductItems(
//                         imageString: "assets/image/img_23.png",
//                         brand: 'Casio',
//                         model: 'GA-2100P-1A',
//                         newPrice: 9500,
//                         oldPrice: 15000,
//                       ),
//                     ],
//                   ),
//                   Positioned(
//                     top: 5,
//                     left: 150,
//                     child: Icon(
//                       Icons.favorite_border,
//                       color: Color(0xFF317773),
//                     ),
//                   ),
//                   Positioned(
//                     top: 5,
//                     right: 15,
//                     child: Icon(
//                       Icons.favorite_border,
//                       color: Color(0xFF317773),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 30,),
//               Stack(
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ProductItems(
//                         imageString: "assets/image/img_21.png",
//                         brand: 'Levis',
//                         model: 'Blue Slim Fit T-shirt',
//                         newPrice: 3500,
//                         oldPrice: 4000,
//                       ),
//                       SizedBox(height: 15),
//                       ProductItems(
//                         imageString: "assets/image/img_22.png",
//                         brand: 'Allen Solly',
//                         model: 'Black Casual Trousers',
//                         newPrice: 2500,
//                         oldPrice: 4000,
//                       ),
//                     ],
//                   ),
//                   Positioned(
//                     top: 5,
//                     left: 150,
//                     child: Icon(
//                       Icons.favorite_border,
//                       color: Color(0xFF317773),
//                     ),
//                   ),
//                   Positioned(
//                     top: 5,
//                     right: 15,
//                     child: Icon(
//                       Icons.favorite_border,
//                       color: Color(0xFF317773),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20,),
//
//             ]),
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'popular.dart';

class Newarrivals extends StatelessWidget {
  Newarrivals({super.key});

  final List<String> featuredImages = [
    "assets/image/img_26.png",
    "assets/image/img_27.png",
    "assets/image/img_28.png",
  ];

  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Color(0xFF317773),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
          },
        ),
        centerTitle: true,
        title: Text(
          "New Arrivals",
          style: TextStyle(
            color: Color(0xff2C2D2E),
            fontWeight: FontWeight.bold,
            fontFamily: "Sen",
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      height: 360,
                      width: 340,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Stack(
                        children: [
                          PageView.builder(
                            controller: _pageController,
                            itemCount: featuredImages.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsets.only(left: 7),
                                child: Image.asset(
                                  featuredImages[index],
                                  height: 400,
                                ),
                              );
                            },
                            onPageChanged: (index) {
                              _currentIndex = index;
                            },
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                              onPressed: () {
                                if (_currentIndex > 0) {
                                  _pageController.previousPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeIn,
                                  );
                                }
                              },
                              icon: Icon(Icons.arrow_back_ios),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              onPressed: () {
                                if (_currentIndex < featuredImages.length - 1) {
                                  _pageController.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeIn,
                                  );
                                }
                              },
                              icon: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProductItems(
                      imageString: "assets/image/img_29.png",
                      brand: 'Roadster',
                      model: 'Slim Fit Shirt',
                      newPrice: 3500,
                      oldPrice: 4000,
                    ),
                    SizedBox(height: 15),
                    ProductItems(
                      imageString: "assets/image/img_30.png",
                      brand: 'Allen Solly',
                      model: 'Casual T-Shirt',
                      newPrice: 2500,
                      oldPrice: 4000,
                    ),
                  ],
                ),
                Positioned(
                  top: 5,
                  left: 150,
                  child: Icon(
                    Icons.favorite_border,
                    color: Color(0xFF317773),
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 15,
                  child: Icon(
                    Icons.favorite_border,
                    color: Color(0xFF317773),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProductItems(
                      imageString: "assets/image/img_6.png",
                      brand: 'Nike',
                      model: 'Nike Impact 4V',
                      newPrice: 6000,
                      oldPrice: 7000,
                    ),
                    SizedBox(height: 15),
                    ProductItems(
                      imageString: "assets/image/img_23.png",
                      brand: 'Casio',
                      model: 'GA-2100P-1A',
                      newPrice: 9500,
                      oldPrice: 15000,
                    ),
                  ],
                ),
                Positioned(
                  top: 5,
                  left: 150,
                  child: Icon(
                    Icons.favorite_border,
                    color: Color(0xFF317773),
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 15,
                  child: Icon(
                    Icons.favorite_border,
                    color: Color(0xFF317773),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProductItems(
                      imageString: "assets/image/img_21.png",
                      brand: 'Levis',
                      model: 'Blue Slim Fit T-shirt',
                      newPrice: 3500,
                      oldPrice: 4000,
                    ),
                    SizedBox(height: 15),
                    ProductItems(
                      imageString: "assets/image/img_22.png",
                      brand: 'Allen Solly',
                      model: 'Black Casual Trousers',
                      newPrice: 2500,
                      oldPrice: 4000,
                    ),
                  ],
                ),
                Positioned(
                  top: 5,
                  left: 150,
                  child: Icon(
                    Icons.favorite_border,
                    color: Color(0xFF317773),
                  ),
                ),
                Positioned(
                  top: 5,
                  right: 15,
                  child: Icon(
                    Icons.favorite_border,
                    color: Color(0xFF317773),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
