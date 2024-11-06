import 'package:cartify/payment.dart';
import 'package:cartify/processing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_sharp,
            color: Color(0xFF317773),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
          },
        ),
        centerTitle: true,
        title: const Text(
          "Checkout",
          style: TextStyle(
            color: Color(0xff2C2D2E),
            fontWeight: FontWeight.bold,
            fontFamily: "Sen",
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20, ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Address",
                      style: TextStyle(
                        color: Color(0xff2C2D2E),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sen",
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8,),
              Container(
                height: 80,
                width: 340,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5)
                    ]),
                child: const ListTile(
                  leading: Icon(Icons.radio_button_checked,color: Color(0xff317773),),
                  title: Text("Home",
                      style: TextStyle(
                      color: Color(0xff000000),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Sen",
                  fontSize: 18,
                ),),
                  subtitle: Text("Oxford,Oxford Towers 560017,Bangalore",
                      style: TextStyle(
                      color: Color(0xff949393),
                  fontFamily: "Sen",
                  fontSize: 14,
                ),
                  ),
                ),

              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 40,
                width: 340,
                child: OutlinedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Saddress()));

                }, child: const Text("Change Address",
                  style: TextStyle(
                    color: Color(0xff317773),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Sen",
                    fontSize: 14,
                  ),
                ),
                  style: ElevatedButton.styleFrom(
                      elevation: 6,
                      shadowColor:const Color(0xff64646),
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),

                      )
                )
                ),
              ),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Payment",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sen",
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8,),
              Container(
                height: 80,
                width: 340,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListTile(
                    leading: Image.asset("assets/image/img_31.png",height: 24,width: 24,),
                    title: const Text("******9385",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sen",
                        fontSize: 14,
                      ),),
                    trailing: Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: IconButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Payment()));

                      }, icon: const Icon(Icons.arrow_forward_ios,color: Color(0xff317773),size: 20,), ),
                    ),

                  ),
                ),
              ),
              const SizedBox(height: 30,),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "Price Details",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Sen",
                          fontSize: 20,
                          letterSpacing: 1),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "(2 items)",
                      style: TextStyle(
                          fontFamily: "Sen",
                          fontSize: 20,
                          letterSpacing: 1),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                width: 360,
                color: Colors.transparent,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
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
                          padding: EdgeInsets.only(left: 170),
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
                          padding: EdgeInsets.only(left: 20),
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
                          padding: EdgeInsets.only(left: 220),
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
                          padding: EdgeInsets.only(left: 20),
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
                          padding: EdgeInsets.only(left: 170),
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
                          padding: EdgeInsets.only(left: 20),
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
                          padding: EdgeInsets.only(left: 100),
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
              const SizedBox(height: 40,),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProgressionScreen()));

                    },
                    child: const Text(
                      "Pay Now",
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

class Saddress extends StatefulWidget {
  const Saddress({Key? key}) : super(key: key);

  @override
  _SaddressState createState() => _SaddressState();
}

class _SaddressState extends State<Saddress> {
  String? selectedAddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_sharp,
            color: Color(0xFF317773),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
          },
        ),
        centerTitle: true,
        title: const Text(
          "Saved Address",
          style: TextStyle(
            color: Color(0xff2C2D2E),
            fontWeight: FontWeight.bold,
            fontFamily: "Sen",
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                const SizedBox(height: 8),
                buildAddressTile("Home", "Oxford, Oxford Towers 560017, Bangalore"),
                const SizedBox(height: 20),
                buildAddressTile("Office", "Oxford, Oxford Towers 560017, Bangalore"),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 20),
                  child: Container(
                    height: 40,
                    width: 320,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Checkout()));
                      },
                      child: const Text(
                        "Save",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 40,
                  width: 320,
                  child: OutlinedButton(
                    onPressed: () {
                      // Add New Address action
                    },
                    child: const Text(
                      "Add New Address",
                      style: TextStyle(
                        color: Color(0xff317773),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sen",
                        fontSize: 14,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 6,
                      shadowColor: const Color(0xff64646),
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
      ),
    );
  }

  Widget buildAddressTile(String addressType, String address) {
    return Container(
      height: 80,
      width: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(
          selectedAddress == addressType
              ? Icons.radio_button_checked
              : Icons.radio_button_off_outlined,
          color: const Color(0xff317773),
        ),
        title: Text(
          addressType,
          style: const TextStyle(
            color: Color(0xff000000),
            fontWeight: FontWeight.bold,
            fontFamily: "Sen",
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          address,
          style: const TextStyle(
            color: Color(0xff949393),
            fontFamily: "Sen",
            fontSize: 14,
          ),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: IconButton(
            onPressed: () {
              // Edit address action
            },
            icon: const Icon(Icons.edit),
          ),
        ),
        onTap: () {
          setState(() {
            selectedAddress = addressType;
          });
        },
      ),
    );
  }
}