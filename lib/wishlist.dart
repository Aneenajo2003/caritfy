import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Wishlist extends StatelessWidget {
  Wishlist({super.key});

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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
        ),
        centerTitle: true,
        title: Text(
          "Wishlist",
          style: TextStyle(
            color: Color(0xff2C2D2E),
            fontWeight: FontWeight.bold,
            fontFamily: "Sen",
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 22.0, top: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WishlistCard(
                image: 'assets/image/img_7.png',
                name: 'Nike Air Max Ap',
                price: 6000,
              ),
              SizedBox(
                height: 20,
              ),
              WishlistCard(
                  image: "assets/image/img_6.png",
                  name: "Nike Impact 4v",
                  price: 6000)
            ],
          ),
        ),
      ),
    );
  }
}

class WishlistCard extends StatefulWidget {
  const WishlistCard(
      {super.key, required this.image, required this.name, required this.price});
  final String image, name;
  final int price;

  @override
  _WishlistCardState createState() => _WishlistCardState();
}

class _WishlistCardState extends State<WishlistCard> {
  String buttonText = 'Add To Cart';
  bool isFavorite = false;

  void _changeText() {
    setState(() {
      buttonText = buttonText == 'Add To Cart' ? 'Added Successfully!' : 'Add To Cart';
    });
  }

  void _toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 380,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5)
          ]),
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.vertical(top: Radius.circular(8)),
                        image: DecorationImage(
                          image: AssetImage(widget.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.name, style: TextStyle(fontSize: 20)),
                        SizedBox(height: 2),
                        Text('₹${widget.price}',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(width: 8),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 20),
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
              Padding(
                padding: const EdgeInsets.only(top: 13.0),
                child: Container(
                  height: 48,
                  width: 340,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color(0xffD9D9D9),
                      backgroundColor: const Color(0xff317773),
                      shadowColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ), // foreground
                    ),
                    onPressed: _changeText,
                    child: Text(
                      buttonText,
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
