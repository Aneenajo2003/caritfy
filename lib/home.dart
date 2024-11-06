
import 'dart:async';

import 'package:cartify/category.dart';
import 'package:cartify/popular.dart';
import 'package:cartify/productview.dart';
import 'package:cartify/profile.dart';
import 'package:cartify/search.dart';
import 'package:cartify/wishlist.dart';
import 'package:flutter/material.dart';

import 'cart.dart';
import 'newarrivals.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List<Widget> pages = [
    Homeee(),
    Wishlist(),
    Mycart(),
    Profile(),
    Search()
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex], // Placeholder for other pages
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff317773),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Wishlist"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "My cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
//
// class Homeee extends StatelessWidget {
//   Homeee({Key? key}) : super(key: key);
//   final List<String> banners = [
//     "assets/image/img_38.png",
//     "assets/image/img_39.png",
//     "assets/image/img_40.png",
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Image.asset(
//           "assets/image/img_1.png",
//             color: Color(0xff317773),
//           height: 40,
//           width: 40,
//         ),
//         actions: [
//           InkWell(
//             child: Icon(
//               Icons.search_outlined,
//               color: Color(0xff317773),
//               size: 30,
//             ),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Search()),
//               );
//             },
//           ),
//           SizedBox(width: 15,),
//         ],
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         padding: const EdgeInsets.all(10),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: 220,
//               child: Center(
//                 child: CarouselSlider.builder(
//                   itemCount: banners.length,
//                   itemBuilder: (BuildContext context, int index, int pageViewIndex) =>
//                       Container(
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                               image: AssetImage(
//                                 banners[index],
//                               ),
//                               fit: BoxFit.cover),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                   options: CarouselOptions(
//                     height: 140,
//                     viewportFraction: 0.8,
//                     initialPage: 0,
//                     enableInfiniteScroll: true,
//                     reverse: false,
//                     autoPlay: true,
//                     autoPlayInterval: Duration(seconds: 3),
//                     autoPlayAnimationDuration: Duration(milliseconds: 800),
//                     autoPlayCurve: Curves.fastOutSlowIn,
//                     enlargeCenterPage: true,
//                     enlargeFactor: 0.3,
//                     scrollDirection: Axis.horizontal,
//                   ),
//                 ),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "New Arrivals",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => Newarrivals()));
//                   },
//                   child: Text(
//                     "See All",
//                     style: TextStyle(
//                       color: Color(0xFF317773),
//                       fontSize: 16,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 15,),
//             Stack(
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     ProductCard(
//                       imageString: "assets/image/img_2.png",
//                       brand: 'Nike',
//                       model: 'Jordan 23 Engineered',
//                       newPrice: 2000,
//                       oldPrice: 4000,
//                     ),
//                     ProductCard(
//                       imageString: "assets/image/img_3.png",
//                       brand: 'Nike',
//                       model: 'Crew-Neck Sweatshirt',
//                       newPrice: 2000,
//                       oldPrice: 4000,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: 15,),
//             Container(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Category",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           Navigator.push(context, MaterialPageRoute(builder: (context) => Category()));
//                         },
//                         child: Text(
//                           "See All",
//                           style: TextStyle(
//                             color: Color(0xFF317773),
//                             fontSize: 16,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       CategoryCard(
//                         title: "Shoes",
//                         imageString: "assets/image/img_4.png",
//                       ),
//                       CategoryCard(
//                         title: "T-Shirts",
//                         imageString: "assets/image/img_5.png",
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Popular",
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           Navigator.push(context, MaterialPageRoute(builder: (context) => Popular()));
//                         },
//                         child: Text(
//                           "See All",
//                           style: TextStyle(
//                             color: Color(0xFF317773),
//                             fontSize: 16,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 15,),
//                   Stack(
//                     children: [
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               // Handle tap for Nike Air Max AP
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(builder: (context) => Productview(productName: 'Nike Air Max AP')),
//                               );
//                             },
//                             child: ProductCard(
//                               imageString: "assets/image/img_7.png",
//                               brand: 'Nike',
//                               model: 'Nike Air Max AP',
//                               newPrice: 6000,
//                               oldPrice: 7000,
//                             ),
//                           ),
//                           ProductCard(
//                             imageString: "assets/image/img_6.png",
//                             brand: 'Nike',
//                             model: 'Nike Impact 4v',
//                             newPrice: 6000,
//                             oldPrice: 7000,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
class Homeee extends StatefulWidget {
  Homeee({Key? key}) : super(key: key);

  final List<String> banners = [
    "assets/image/img_38.png",
    "assets/image/img_39.png",
    "assets/image/img_40.png",
  ];

  @override
  _HomeeeState createState() => _HomeeeState();
}

class _HomeeeState extends State<Homeee> {
  late PageController _pageController;
  late Timer _timer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);

    // Timer for auto-play functionality
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < widget.banners.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 800),
        curve: Curves.fastOutSlowIn,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              Icons.search_outlined,
              color: Color(0xff317773),
              size: 30,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Search()),
              );
            },
          ),
          SizedBox(width: 15,),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 30,
              child: SizedBox(
                height: 180,
                width: 500,
                child: Align(
                  widthFactor: 30,
                  alignment: Alignment.center, // Adjust alignment as needed
                  child: PageView.builder(
                    physics: AlwaysScrollableScrollPhysics(),
                    controller: _pageController,
                    itemCount: widget.banners.length,
                    itemBuilder: (context, index) {
                      return Container(
                        //width: 400,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(widget.banners[index]),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Arrivals",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Newarrivals()));
                  },
                  child: Text(
                    "See All",
                    style: TextStyle(
                      color: Color(0xFF317773),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProductCard(
                      imageString: "assets/image/img_2.png",
                      brand: 'Nike',
                      model: 'Jordan 23 Engineered',
                      newPrice: 2000,
                      oldPrice: 4000,
                    ),
                    ProductCard(
                      imageString: "assets/image/img_3.png",
                      brand: 'Nike',
                      model: 'Crew-Neck Sweatshirt',
                      newPrice: 2000,
                      oldPrice: 4000,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15,),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Category()));
                        },
                        child: Text(
                          "See All",
                          style: TextStyle(
                            color: Color(0xFF317773),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CategoryCard(
                        title: "Shoes",
                        imageString: "assets/image/img_4.png",
                      ),
                      CategoryCard(
                        title: "T-Shirts",
                        imageString: "assets/image/img_5.png",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Popular()));
                        },
                        child: Text(
                          "See All",
                          style: TextStyle(
                            color: Color(0xFF317773),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Stack(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Handle tap for Nike Air Max AP
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Productview(productName: 'Nike Air Max AP')),
                              );
                            },
                            child: ProductCard(
                              imageString: "assets/image/img_7.png",
                              brand: 'Nike',
                              model: 'Nike Air Max AP',
                              newPrice: 6000,
                              oldPrice: 7000,
                            ),
                          ),
                          ProductCard(
                            imageString: "assets/image/img_6.png",
                            brand: 'Nike',
                            model: 'Nike Impact 4v',
                            newPrice: 6000,
                            oldPrice: 7000,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String imageString;
  final String title;

  const CategoryCard({
    required this.imageString,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 165,
          width: 165,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
              image: AssetImage(imageString),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(title, style: TextStyle(fontSize: 20)),
      ],
    );
  }
}

class ProductCard extends StatefulWidget {
  final String imageString, model, brand;
  final int newPrice, oldPrice;

  const ProductCard({
    required this.imageString,
    required this.model,
    required this.brand,
    required this.newPrice,
    required this.oldPrice,
    Key? key,
  }) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                  image: DecorationImage(
                    image: AssetImage(widget.imageString),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: -5,
                right: -1,
                child: IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Color(0xFF317773),
                  ),
                  onPressed: _toggleFavorite,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.brand,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Text(widget.model, style: TextStyle(fontSize: 16)),
              SizedBox(height: 2),
              Row(
                children: [
                  Text('₹${widget.newPrice}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(width: 8),
                  Text(
                    '₹${widget.oldPrice}',
                    style: TextStyle(fontSize: 14, color: Colors.grey, decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
