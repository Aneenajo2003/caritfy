import 'package:flutter/material.dart';
import 'cart.dart';
import 'home.dart';
import 'profile.dart';
import 'wishlist.dart';

class Search extends StatefulWidget {
  Search({super.key});

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();
  int _selectedIndex = 0;
  List<Widget> pages = [
    Homeee(),
    Wishlist(),
    const Mycart(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => pages[_selectedIndex]),
      );
    });
  }

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
          "Search",
          style: TextStyle(
            color: Color(0xff2C2D2E),
            fontWeight: FontWeight.bold,
            fontFamily: "Sen",
            fontSize: 20,
            letterSpacing: 2,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffDEDCDC),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: TextField(
                    controller: _searchController,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontFamily: "Sen",
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  Image.asset(
                    "assets/image/img_13.png",
                    width: 125.92,
                    height: 125.93,
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    "What are you looking for?",
                    style: TextStyle(
                      color: Color(0xffB4B0B0),
                      fontSize: 20,
                      fontFamily: "Sen",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff317773),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          const BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Wishlist"),
          const BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "My cart"),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),

        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Search(),
  ));
}
// import 'package:flutter/material.dart';
// import 'cart.dart';
// import 'home.dart';
// import 'profile.dart';
// import 'wishlist.dart';
//
// class Search extends StatefulWidget {
//   Search({super.key});
//
//   @override
//   _SearchState createState() => _SearchState();
// }
//
// class _SearchState extends State<Search> {
//   final TextEditingController _searchController = TextEditingController();
//   int _selectedIndex = 0;
//   List<Widget> pages = [
//     Home(),
//     Wishlist(),
//     Mycart(),
//     Profile(),
//   ];
//
//   List<String> searchResults = [
//     'Shirts',
//     'Result 2',
//     'Result 3',
//     'Result 4',
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => pages[_selectedIndex]),
//       );
//     });
//   }
//
//   void _onResultTapped(String result) {
//     // Handle navigation based on the tapped result
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) {
//         if (result == 'Shirts') return Homeee();
//         if (result == 'Result 2') return Wishlist();
//         if (result == 'Result 3') return Mycart();
//         if (result == 'Result 4') return Profile();
//         return Home(); // Default to Home if no match
//       }),
//     );
//   }
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
//           "Search",
//           style: TextStyle(
//             color: Color(0xff2C2D2E),
//             fontWeight: FontWeight.bold,
//             fontFamily: "Sen",
//             fontSize: 20,
//             letterSpacing: 2,
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Color(0xffDEDCDC),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 35.0),
//                   child: TextField(
//                     controller: _searchController,
//                     style: const TextStyle(color: Colors.black),
//                     cursorColor: Colors.black,
//                     decoration: const InputDecoration(
//                       hintText: 'Search',
//                       hintStyle: TextStyle(
//                         color: Colors.black54,
//                         fontSize: 20,
//                         fontFamily: "Sen",
//                       ),
//                       border: InputBorder.none,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(right: 250),
//               child: Text("Recently search",style: TextStyle(fontSize: 17),),
//             ),
//             const SizedBox(height: 20,),
//             ListView.builder(
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               itemCount: searchResults.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(searchResults[index]),
//                   onTap: () => _onResultTapped(searchResults[index]),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         elevation: 10,
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Color(0xff317773),
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.grey,
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Wishlist"),
//           BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "My cart"),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
//         ],
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: Search(),
//   ));
// }
