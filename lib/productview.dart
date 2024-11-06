//
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:carousel_slider/carousel_controller.dart' ;
// import 'package:flutter/material.dart';
//
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// import 'cart.dart';
// import 'home.dart';
//
// class Productview extends StatefulWidget {
//   Productview({ super.key, required this.productName});
//
//   final String productName;
//
//   @override
//   State<Productview> createState() => _ProductviewState();
// }
//
// class _ProductviewState extends State<Productview> {
//   final List<String> product = [
//     "assets/image/img_41.png",
//     "assets/image/img_42.png",
//     "assets/image/img_43.png",
//   ];
//
//  final  _carouselController =CarouselController();
//   int _currentIndex = 0;
//   bool isFavorite = false;
//   // PageController pageController = PageController();
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
//         title: Image.asset(
//           "assets/image/img_1.png",
//           color: Color(0xff317773),
//           height: 40,
//           width: 40,
//         ),
//         actions: [
//           InkWell(
//             child: Icon(
//               Icons.shopping_cart_outlined,
//               color: Color(0xff317773),
//               size: 30,
//             ),
//             onTap: () {
//               Navigator.push(context, MaterialPageRoute(builder: (context) => Mycart()));
//               // Navigate to cart screen
//             },
//           ),
//           SizedBox(width: 15),
//         ],
//       ),
//       body: SingleChildScrollView(
//         scrollDirection:Axis.vertical ,
//         child: Padding(
//           padding: const EdgeInsets.only(bottom: 10.0),
//           child: Stack(
//             children:[ Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 250,
//                   child: CarouselSlider.builder(
//                     carouselController: _carouselController,
//                     itemCount: product.length,
//                     itemBuilder: (BuildContext context, int index, int pageViewIndex) {
//                       return Image.asset(
//                         product[index],
//                         fit: BoxFit.cover,
//                       );
//                     },
//                     options: CarouselOptions(
//                       height: 250,
//                       viewportFraction: 0.8,
//                       initialPage: 0,
//                       enableInfiniteScroll: true,
//                       reverse: false,
//                       autoPlay: true,
//                       autoPlayInterval: Duration(seconds: 3),
//                       autoPlayAnimationDuration: Duration(milliseconds: 800),
//                       autoPlayCurve: Curves.fastOutSlowIn,
//                       enlargeCenterPage: true,
//                       enlargeFactor: 0.3,
//                       scrollDirection: Axis.horizontal,
//                       onPageChanged: (index, reason) {
//                         setState(() {
//                           _currentIndex = index;
//                         });
//                       },
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 16),
//                 Center(
//                   child: SmoothPageIndicator(
//                     controller: _carouselController,
//                     count: product.length,
//                     effect: ScrollingDotsEffect(
//                       activeStrokeWidth: 2.6,
//                       activeDotScale: 1.3,
//                       maxVisibleDots: 5,
//                       radius: 8,
//                       spacing: 10,
//                       dotHeight: 12,
//                       dotWidth: 12,
//                     ),
//                     onDotClicked: (index) {
//                       _carouselController.animateToPage(index);
//                     },
//                   ),
//                 ),
//                 SizedBox(height: 30),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 25),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Nike",
//                         style: TextStyle(
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.grey,
//                         ),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             "Air Max AP",
//                             style: TextStyle(
//                               fontSize: 30,
//                               color: Colors.black,
//                             ),
//                           ),
//                           IconButton(
//                             onPressed: () {
//                               setState(() {
//                                 isFavorite = !isFavorite;
//                               });
//                             },
//                             icon: Icon(
//                               isFavorite
//                                   ? Icons.favorite_rounded
//                                   : Icons.favorite_outline_rounded,
//                               size: 22,
//                               color: Color(0xff317773),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 20),
//                       Text(
//                         "Size",
//                         style: TextStyle(
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                       SizedBox(height: 6),
//                       Row(
//                         children: [
//                           for (var size in ["6", "7", "8", "9", "10"])
//                             Padding(
//                               padding: const EdgeInsets.only(right: 10),
//                               child: Container(
//                                 height: 40,
//                                 width: 40,
//                                 decoration: BoxDecoration(
//                                   border: Border.all(color: Color(0xff317773)),
//                                   borderRadius: BorderRadius.circular(12),
//                                   color: size == "7" ? Color(0xff317773) : Colors.transparent,
//                                   boxShadow: size == "7"
//                                       ? [
//                                     BoxShadow(
//                                       color: Colors.black54,
//                                       offset: Offset(2, 2),
//                                       blurRadius: 3,
//                                     )
//                                   ]
//                                       : null,
//                                 ),
//                                 child: Center(
//                                   child: Text(
//                                     size,
//                                     style: TextStyle(
//                                       fontSize: 22,
//                                       fontWeight: FontWeight.bold,
//                                       color: size == "7" ? Colors.white : Colors.black,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                         ],
//                       ),
//                       SizedBox(height: 20),
//                       Text(
//                         "Color",
//                         style: TextStyle(
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                       SizedBox(height: 6),
//                       Row(
//                         children: [
//                           Container(
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               border: Border.all(color: Colors.black, width: 1.0),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(4.0),
//                               child: CircleAvatar(
//                                 backgroundColor: Colors.white,
//                                 radius: 18,
//                               ),
//                             ),
//                           ),
//                           SizedBox(width: 10),
//                           for (var color in [Colors.red, Colors.blue, Colors.black])
//                             Padding(
//                               padding: const EdgeInsets.only(right: 10),
//                               child: CircleAvatar(
//                                 radius: 20,
//                                 backgroundColor: color,
//                               ),
//                             ),
//                         ],
//                       ),
//                       SizedBox(height: 20),
//                       Text(
//                         "Product",
//                         style: TextStyle(
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                       Text(
//                         "With its sleek, sporty design, the Nike Air Max AP lets you bridge past and present in first-class comfort.",
//                         style: TextStyle(
//                           fontSize: 20,
//                           color: Colors.black,
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       Text(
//                         "Customer Review",
//                         style: TextStyle(
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                       SizedBox(height: 20,),
//                       Stack(
//                         children: [
//                         Container(
//                         height: 90,
//                         width: 360,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: Colors.white,
//                             boxShadow: [
//                               BoxShadow(
//                                   color: Colors.grey.withOpacity(0.5),
//                                   spreadRadius: 2,
//                                   blurRadius: 5)
//                             ]),
//                         child: Stack(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.all(10.0),
//                               child: Row(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 8.0, top: 10),
//                                     child: CircleAvatar(
//                                       backgroundImage: AssetImage("assets/image/img_45.png"),
//                                     )
//                                   ),
//
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 10.0),
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           "Alen",
//                                           style: TextStyle(
//                                             fontSize: 20,
//                                             color: Colors.black87,
//                                           ),
//                                         ),
//                                         Text(
//                                           "Perfect Fit!",
//                                           style: TextStyle(
//                                             fontSize: 18,
//                                             color: Color(0xff317773),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(right: 8.0,left: 100,top: 15),
//                                     child: Row(
//                                       children: [
//                                         Icon(
//                                           Icons.star,
//                                           color: Colors.black87,
//                                           size: 20,
//                                         ),
//
//
//
//                                   SizedBox(width: 3),
//                                   Text(
//                                     "5.0",
//                                     style: TextStyle(
//                                       fontSize: 21.5,
//                                       color: Colors.black87,
//                                     ),
//                                   ),
//
//                                   ]
//                               )
//                                   )
//                                 ],
//                               ),
//                             ),
//
//                           ],
//                         ),
//                       ),
//           ],
//                       ),
//                       SizedBox(height: 20,),
//                       Stack(
//                         children: [
//                           Container(
//                             height: 90,
//                             width: 360,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 color: Colors.white,
//                                 boxShadow: [
//                                   BoxShadow(
//                                       color: Colors.grey.withOpacity(0.5),
//                                       spreadRadius: 2,
//                                       blurRadius: 5)
//                                 ]),
//                             child: Stack(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(10.0),
//                                   child: Row(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       Padding(
//                                           padding: const EdgeInsets.only(left: 8.0, top: 10),
//                                           child: CircleAvatar(
//                                             backgroundImage: AssetImage("assets/image/img_45.png"),
//                                           )
//                                       ),
//
//                                       Padding(
//                                         padding: const EdgeInsets.only(left: 10.0),
//                                         child: Column(
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               "Tony",
//                                               style: TextStyle(
//                                                 fontSize: 20,
//                                                 color: Colors.black87,
//                                               ),
//                                             ),
//                                             Text(
//                                               "Comfortable to wear!",
//                                               style: TextStyle(
//                                                 fontSize: 18,
//                                                 color: Color(0xff317773),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       Padding(
//                                           padding: const EdgeInsets.only(right: 8.0,left: 25,top: 15),
//                                           child: Row(
//                                               children: [
//                                                 Icon(
//                                                   Icons.star,
//                                                   color: Colors.black87,
//                                                   size: 20,
//                                                 ),
//
//
//
//                                                 SizedBox(width: 3),
//                                                 Text(
//                                                   "4.5",
//                                                   style: TextStyle(
//                                                     fontSize: 21.5,
//                                                     color: Colors.black87,
//                                                   ),
//                                                 ),
//
//                                               ]
//                                           )
//                                       )
//                                     ],
//                                   ),
//                                 ),
//
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 50), // Added to give space above bottom container
//                     ],
//                   ),
//                 ),
//                 // Bottom container with fixed height and rounded top border
//                 Container(
//                   height: 120,
//                   decoration: BoxDecoration(
//                     color: Colors.grey.shade200,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(20),
//                       topRight: Radius.circular(20),
//                     ),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black26,
//                         blurRadius: 10,
//                         offset: Offset(0, -5),
//                       ),
//                     ],
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 "Price",
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.grey.shade700,
//                                 ),
//                               ),
//                               Text(
//                                 "₹ 6,000",
//                                 style: TextStyle(
//                                   fontSize: 25,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 48,
//                           width: 250,
//                           child: ElevatedButton(
//                             onPressed: () {
//                               // Handle add to cart action
//                             },
//                             child: Text(
//                               "Add to cart",
//                               style: TextStyle(
//                                 color: Color(0xffD9D9D9),
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                                 letterSpacing: 1,
//                               ),
//                             ),
//                             style: ElevatedButton.styleFrom(
//                               elevation: 6,
//                               backgroundColor: Color(0xff1C3C3A),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10.0),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'cart.dart';
import 'home.dart';

class Productview extends StatefulWidget {
  Productview({super.key, required this.productName});

  final String productName;

  @override
  State<Productview> createState() => _ProductviewState();
}

class _ProductviewState extends State<Productview> {
  final List<String> product = [
    "assets/image/img_41.png",
    "assets/image/img_42.png",
    "assets/image/img_43.png",
  ];

  final PageController _pageController = PageController();
  int _currentIndex = 0;
  bool isFavorite = false;

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
        title: Image.asset(
          "assets/image/img_1.png",
          color: Color(0xff317773),
          height: 40,
          width: 40,
        ),
        actions: [
          InkWell(
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xff317773),
              size: 30,
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Mycart()));
            },
          ),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 250,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: product.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      product[index],
                      fit: BoxFit.cover,
                    );
                  },
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: product.length,
                  effect: ScrollingDotsEffect(
                    activeStrokeWidth: 2.6,
                    activeDotScale: 1.3,
                    maxVisibleDots: 5,
                    radius: 8,
                    spacing: 10,
                    dotHeight: 12,
                    dotWidth: 12,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nike",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Air Max AP",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                          icon: Icon(
                            isFavorite
                                ? Icons.favorite_rounded
                                : Icons.favorite_outline_rounded,
                            size: 22,
                            color: Color(0xff317773),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Size",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        for (var size in ["6", "7", "8", "9", "10"])
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff317773)),
                                borderRadius: BorderRadius.circular(12),
                                color: size == "7" ? Color(0xff317773) : Colors.transparent,
                                boxShadow: size == "7"
                                    ? [
                                  BoxShadow(
                                    color: Colors.black54,
                                    offset: Offset(2, 2),
                                    blurRadius: 3,
                                  )
                                ]
                                    : null,
                              ),
                              child: Center(
                                child: Text(
                                  size,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: size == "7" ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Color",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 1.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 18,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        for (var color in [Colors.red, Colors.blue, Colors.black])
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: color,
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Product",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "With its sleek, sporty design, the Nike Air Max AP lets you bridge past and present in first-class comfort.",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Customer Review",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    Stack(
                      children: [
                        Container(
                          height: 90,
                          width: 360,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5)
                              ]),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(left: 8.0, top: 10),
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage("assets/image/img_45.png"),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Alen",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black87,
                                            ),
                                          ),
                                          Text(
                                            "Perfect Fit!",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Color(0xff317773),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            right: 8.0, left: 100, top: 15),
                                        child: Row(children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.black87,
                                            size: 20,
                                          ),
                                          SizedBox(width: 3),
                                          Text(
                                            "5.0",
                                            style: TextStyle(
                                              fontSize: 21.5,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ]))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Stack(
                      children: [
                        Container(
                          height: 90,
                          width: 360,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5)
                              ]),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(left: 8.0, top: 10),
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage("assets/image/img_45.png"),
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Tony",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black87,
                                            ),
                                          ),
                                          Text(
                                            "Comfortable to wear!",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Color(0xff317773),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            right: 8.0, left: 25, top: 15),
                                        child: Row(children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.black87,
                                            size: 20,
                                          ),
                                          SizedBox(width: 3),
                                          Text(
                                            "4.5",
                                            style: TextStyle(
                                              fontSize: 21.5,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ]))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50), // Added to give space above bottom container
                  ],
                ),
              ),
              // Bottom container with fixed height and rounded top border
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, -5),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Price",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade700,
                              ),
                            ),
                            Text(
                              "₹ 6,000",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 48,
                        width: 250,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Mycart()));

                            // Handle add to cart action
                          },
                          child: Text(
                            "Add to cart",
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
