import 'package:cartify/home.dart';
import 'package:cartify/login.dart';
import 'package:cartify/payment.dart';
import 'package:cartify/trackorder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'checkout.dart';
import 'orderhistory.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  List<items> first = [
    items(name: "Edit Profile"),
    items(name: "Security "),
    items(name: "Saved Address"),
    items(name: "Payment Settings")
  ];
  List<items> second = [
    items(name: "Track Order"),
    items(name: "Order History "),
  ];
  List<items> third = [
    items(name: "Invite & Earn"),
    items(name: "Coupons "),
    items(name: "Notifications"),
    items(name: "Help Center")
  ];
  List<Widget> items3 = [
    Invite(), Coupons(),Notification(),Help()
  ];
  final List<IconData> icons1 = [
    Icons.edit,
    Icons.lock,
    Icons.contacts,
    Icons.credit_card,
  ];
  final List<IconData> icons2 = [
    Icons.location_on,
    Icons.update_rounded,
  ];
  final List<IconData> icons3 = [
    Icons.wallet_outlined,
    Icons.confirmation_num,
    Icons.notifications,
    Icons.help_center,
  ];
  List<Widget> items1 = [
    Editprofile(),
    Security(),
    Saddress(),
    Payment()
  ];
  List<Widget> items2 = [
    Trackorder(),
    Orderhistory()
  ];

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
        title: Text("Profile", style: TextStyle(
            color: Color(0xff2C2D2E),
            fontWeight: FontWeight.bold,
            fontFamily: "Sen",
            fontSize: 20,
            letterSpacing: 2),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 135,
                  width: 140,
                  child: Column(
                    children: [
                      CircleAvatar(
                        child: Image.asset("assets/image/img_12.png"),
                        radius: 40,
                      ),
                      Expanded(child: Text("Rone Paul Benny", style: TextStyle(color: Colors.grey[700],
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Sen"
                      ),)),
                      Expanded(child: Text("ronepaul@gmail.com", style: TextStyle(color: Colors.grey[700],
                          fontSize: 12,
                          fontFamily: "Sen"
                      ),)),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 25),
                        Text("Account Settings",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Sen"
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 230,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.grey),
                      ),
                      child: ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: Icon(icons1[index], color: Color(0xFF317773)),
                            title: Text(
                              "${first[index].name}",
                              style: TextStyle(fontFamily: "Sen"),
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => items1[index]),
                                );
                              },
                              icon: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color(0xFF317773),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => const Divider(
                          height: 1,
                          color: Colors.grey,
                        ),
                        itemCount: 4,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 25),
                        Text(
                          "Orders",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Sen"),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 125,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.grey),
                      ),
                      child: ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: Icon(icons2[index], color: Color(0xFF317773)),
                            title: Text(
                              "${second[index].name}",
                              style: TextStyle(fontFamily: "Sen"),
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => items2[index]),
                                );
                              },
                              icon: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color(0xFF317773),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => Divider(
                          height: 1,
                          color: Colors.grey,
                        ),
                        itemCount: 2,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 25),
                        Text(
                          "General",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Sen"),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Container(
                        height: 230,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2, color: Colors.grey)),
                        child: ListView.separated(
                            itemBuilder: (context, index) => ListTile(
                              leading: Icon(icons3[index], color: Color(0xFF317773)),
                              title: Text("${third[index].name}", style: TextStyle(fontFamily: "Sen"),),
                              trailing: IconButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => items3[index]));
                                }, icon: Icon(Icons.arrow_forward_ios_rounded, color: Color(0xFF317773)),
                              ),
                            ),
                            separatorBuilder: (context, index) => Divider(
                              height: 1,
                              color: Colors.grey,
                            ),
                            itemCount: 4)),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF317773),
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                    },
                    icon: Icon(Icons.logout_rounded, color: Color(0xFFECEAEA),),
                    label: Text(
                        "Log out", style: TextStyle(
                        color: Color(0xFFECEAEA),
                        fontFamily: "Sen")
                    )
                )
              ]),
        ),
      ),
    );
  }
}

class items {
  late String name;
  items({required this.name});
}


class Notification extends StatefulWidget {
  const Notification({super.key});

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
          },
        ),
        centerTitle: true,
        title: const Text(
          "Notifications",
          style: TextStyle(
              color: Color(0xff2C2D2E),
              fontWeight: FontWeight.bold,
              fontFamily: "Sen",
              fontSize: 20,
              letterSpacing: 1.5
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 220,
              width: double.infinity,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  ListTile(
                    leading: Image.asset(
                      "assets/image/img_46.png",
                      width:75,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    title: const Text(
                      "Flash Sale Alert - Watches:",
                      style: TextStyle(
                        color: Color(0xff2C2D2E),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sen",
                        fontSize: 14,
                      ),
                    ),
                    subtitle: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Limited Time Offer! Get up to 50% off on luxury watches. Don't miss out!",
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "*New",
                          style: TextStyle(
                            color: Color(0xff317773),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Sen",
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 340,
                    child: Padding(
                      padding: const EdgeInsets.only(left:15),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 6,
                            backgroundColor: Color(0xff317773),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )),
                        child: Text(
                          "Shop Now",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              letterSpacing: 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 180,
              width: double.infinity,
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
                children: [
                  ListTile(
                    leading: Image.asset(
                      "assets/image/img_46.png",
                      width:75,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    title: const Text(
                      "Flash Sale Alert - Watches:",
                      style: TextStyle(
                        color: Color(0xff2C2D2E),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Sen",
                        fontSize: 14,
                      ),
                    ),
                    subtitle: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Limited Time Offer! Get up to 50% off on luxury watches. Don't miss out!",
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "*New",
                          style: TextStyle(
                            color: Color(0xff317773),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Sen",
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 340,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 6,
                            backgroundColor: Color(0xff317773),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )),
                        child: Text(
                          "Shop Now",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              letterSpacing: 1),
                        ),
                      ),
                    ),
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










class Editprofile extends StatelessWidget {
  const Editprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Security extends StatelessWidget {
  const Security({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Invite extends StatelessWidget {
  const Invite({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Coupons extends StatelessWidget {
  const Coupons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


