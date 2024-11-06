import 'package:cartify/home.dart';
import 'package:cartify/login.dart';
import 'package:cartify/signup.dart';
import 'package:flutter/material.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Fstpage(),
    );
  }
}

class Fstpage extends StatefulWidget {
  const Fstpage({super.key});

  @override
  State<Fstpage> createState() => _FstpageState();
}

class _FstpageState extends State<Fstpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff317773),
      body: Column(
        children: [
          Stack(
            children: [
              Align(
                heightFactor: 3.5,
                alignment: Alignment.center,
                child: Image.asset("assets/image/img_1.png",width: 172,height: 187,),
              ),
        Padding(
          padding: const EdgeInsets.only(top: 650,left: 65),
          child: SizedBox(
            height: 40,
            width: 280,
            child: ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Losi()),
              );
                    }, child: Text("GET STARTED",style: TextStyle(color: Color(0xffD9D9D9),fontWeight: FontWeight.bold,fontSize: 16,letterSpacing: 1),),
                      style: ElevatedButton.styleFrom(
                          elevation: 6,
                          backgroundColor: Color(0xff1C3C3A),
                          shape:  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),

                          )

                      ),),
          ),
        ),

            ],
          )


        ],
      ),
    );
  }
}
class Losi extends StatelessWidget {
  const Losi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff317773),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: 600,
                child: Center(child: Image.asset("assets/image/img_1.png",width: 172,height: 187,)),
              ),
            ),
        Padding(
          padding: const EdgeInsets.only(top: 500.0),
          child: Expanded(
              child: Container(
          height: 310,
              width: double.infinity,
              decoration: BoxDecoration(
              color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
              ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text("HELLO!",style: TextStyle(fontWeight: FontWeight.bold,
                    fontFamily: "Sen",
                    color: Colors.black,
                    fontSize: 26,
                    letterSpacing: 3),
              ),
              ),

                  Padding(
                    padding: const EdgeInsets.only(top: 40),

                    child: SizedBox(

                      height: 40,
                      width: 280,

                      child: ElevatedButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );


                      }, child: Text("LOGIN",style: TextStyle(color: Color(0xffD9D9D9),fontWeight: FontWeight.bold,fontSize: 16,letterSpacing: 1),),
                        style: ElevatedButton.styleFrom(
                            elevation: 6,
                            backgroundColor: Color(0xff1C3C3A),
                            shape:  RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),

                            )

                        ),),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),

                  SizedBox(

                    height: 40,
                    width: 280,

                    child: OutlinedButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup()),
                      );

                    }, child: Text("SIGN UP",style: TextStyle(color: Color(0xff1C3C3A),fontWeight: FontWeight.bold,fontSize: 16,letterSpacing: 1),),
                      style: ElevatedButton.styleFrom(
                          elevation: 6,
                          shadowColor:Color(0xff64646),
                          shape:  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),

                          )

                      ),),
                  )
            ],
          ),
              )
          ),
        )
          ],
        ),
      ),
    );
  }
}
