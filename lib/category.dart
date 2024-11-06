import 'package:flutter/material.dart';
import 'home.dart';

class Category extends StatelessWidget {
  const Category({Key? key});

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
          "Category",
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryItem(
                    title: "Footwear",
                    imageString: "assets/image/img_14.png",
                  ),
                  SizedBox(height: 15,),
                  CategoryItem(
                    title: "T-Shirts",
                    imageString: "assets/image/img_15.png",
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryItem(
                    title: "Shirts",
                    imageString: "assets/image/img_16.png",
                  ),
                  SizedBox(height: 15,),
                  CategoryItem(
                    title: "Watches",
                    imageString: "assets/image/img_17.png",
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryItem(
                    title: "Trousers",
                    imageString: "assets/image/img_18.png",
                  ),
                  SizedBox(height: 15,),
                  CategoryItem(
                    title: "Accessories",
                    imageString: "assets/image/img_19.png",
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

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.imageString, required this.title});
  final String imageString;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 165,
          width: 165,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageString),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(title, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
