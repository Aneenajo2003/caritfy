import 'package:flutter/material.dart';
import 'home.dart';

class Popular extends StatelessWidget {
  const Popular({Key? key});

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
          "Popular",
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
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProductItems(
                        imageString: "assets/image/img_7.png",
                        brand: 'Nike',
                        model: 'Nike Air Max AP',
                        newPrice: 6000,
                        oldPrice: 7000,
                      ),
                      SizedBox(height: 15),
                      ProductItems(
                        imageString: "assets/image/img_20.png",
                        brand: 'Levis',
                        model: 'Navy Slim Fit Shirt',
                        newPrice: 2000,
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
              SizedBox(height: 20), // Adjust the height between stacks
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
              SizedBox(height: 20), // Adjust the height between stacks
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
              SizedBox(height: 20), // Adjust the height between stacks
              Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProductItems(
                        imageString: "assets/image/img_46.png",
                        brand: 'Nike',
                        model: 'Nike Air Max AP',
                        newPrice: 6000,
                        oldPrice: 7000,
                      ),
                      SizedBox(height: 15),
                      ProductItems(
                        imageString: "assets/image/img_25.png",
                        brand: 'Levis',
                        model: 'Navy Slim Fit Shirt',
                        newPrice: 2000,
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
            ],
          ),
        ),
      ),
    );
  }
}

class ProductItems extends StatelessWidget {
  final String imageString, model, brand;
  final int newPrice, oldPrice;

  const ProductItems({
    required this.imageString,
    required this.model,
    required this.brand,
    required this.newPrice,
    required this.oldPrice,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 168,
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
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              image: DecorationImage(
                image: AssetImage(imageString),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                brand,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Text(model, style: TextStyle(fontSize: 16)),
              SizedBox(height: 2),
              Row(
                children: [
                  Text('₹$newPrice',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(width: 8),
                  Text(
                    '₹$oldPrice',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough),
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
