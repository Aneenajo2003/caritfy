import 'package:cartify/checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Mycart extends StatelessWidget {
  const Mycart({super.key});

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
          "My Cart",
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
              Cartlist(
                image: 'assets/image/img_7.png',
                name: 'Nike Air Max Ap',
                price: 6000,
              ),
              SizedBox(
                height: 20,
              ),
              Cartlist(
                image: "assets/image/img_6.png",
                name: "Nike Impact 4v",
                price: 6000,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 22, top: 40, bottom: 30),
                child: Image.asset(
                  "assets/image/img_11.png",
                  width: double.infinity,
                ),
              ),
              Container(
                height: 60,
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
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Promo code",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Sen",
                            color: Colors.grey,
                            fontSize: 16,
                            letterSpacing: 1),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 140),
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Apply",
                            style: TextStyle(
                                color: Color(0xffD9D9D9),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                letterSpacing: 1),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 6,
                              backgroundColor: Color(0xff317773),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ))),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 150,
                width: 360,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Price",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Sen",
                                color: Colors.grey,
                                fontSize: 18,
                                letterSpacing: 1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 170),
                          child: Text(
                            "₹12,000.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Sen",
                                color: Colors.grey,
                                fontSize: 18,
                                letterSpacing: 1),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Discount",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Sen",
                                color: Colors.grey,
                                fontSize: 18,
                                letterSpacing: 1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 220),
                          child: Text(
                            "₹0",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Sen",
                                color: Colors.grey,
                                fontSize: 18,
                                letterSpacing: 1),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Shipping",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Sen",
                                color: Colors.grey,
                                fontSize: 18,
                                letterSpacing: 1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 170),
                          child: Text(
                            "₹100.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Sen",
                                color: Colors.grey,
                                fontSize: 18,
                                letterSpacing: 1),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Total Amount",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Sen",
                                color: Colors.black,
                                fontSize: 18,
                                letterSpacing: 1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Text(
                            "₹12,100.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Sen",
                                color: Colors.black,
                                fontSize: 18,
                                letterSpacing: 1),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 20),
                child: Container(
                  height: 48,
                  width: 350,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color(0xffD9D9D9),
                      backgroundColor: const Color(0xff317773),
                      shadowColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ), // foreground
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Checkout()));

                    },
                    child: const Text(
                      "Proceed To Pay",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
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

class Cartlist extends StatelessWidget {
  const Cartlist(
      {super.key, required this.image, required this.name, required this.price});
  final String image, name;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 10),
                child: Container(
                  height: 60,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.vertical(top: Radius.circular(8)),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: TextStyle(fontSize: 20)),
                    SizedBox(height: 2),
                    Text(
                      '₹$price',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20, left: 60),
                  child: Image.asset(
                    "assets/image/img_10.png",
                    height: 40,
                    width: 70,
                  )),
            ],
          ),
          Positioned(
            right: 1,
            top: 1,
            child: InkWell(
              onTap: () {
                // Handle item removal
              },
              child: Icon(
                Icons.cancel,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
