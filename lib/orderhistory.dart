import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Orderhistory extends StatelessWidget {
  const Orderhistory({super.key});

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
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
          },
        ),
        centerTitle: true,
        title: Text("Order History",style: TextStyle(color: Color(0xff2C2D2E),
          fontWeight: FontWeight.bold,
          fontFamily: "Sen",
          fontSize: 20,),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 22.0,top: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Ordercard(image: 'assets/image/img_7.png', name: 'Nike Air Max Ap', price: 6000, orderid: "Order Id -#123ABCD456", date: 'Delivered On 07-10-2023',
              ),
              SizedBox(height: 20,),
              Ordercard(image: "assets/image/img_6.png", name: "Nike Impact 4v", price: 6000, orderid: "Order Id -#123ABCD789", date: 'Delivered On 07-10-2023',)
            ],
          ),
        ),
      ),
    );

  }
}
class Ordercard extends StatelessWidget {
  const Ordercard({super.key, required this.orderid, required this.image, required this.name, required this.date, required this.price});
  final String orderid,image, name,date;
  final int price;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 160,
      width: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.6),
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
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            orderid, style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Color(0xff000000))),
                        SizedBox(height: 2),
                        Text(
                            name, style: TextStyle(fontSize: 16)),
                        SizedBox(height: 2),
                        Text('₹$price',textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold,)),
                        SizedBox(width: 8),
                        Text('$date',textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 10,)),
                        SizedBox(width: 8),

                      ],
                    ),
                  ),


                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  height: 32,
                  width: 310,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color(0xffD9D9D9),
                      backgroundColor: const Color(0xff317773),
                      shadowColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ), // foreground
                    ),
                    onPressed: () {},
                    child: const Text("Buy Again",style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),),
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

