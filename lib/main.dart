import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appc/signIn.dart';

import 'MyHomePage.dart';
import 'login.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Carousel',
      home: ImageCarousel(),
    );
  }
}

class ImageCarousel extends StatefulWidget {
  _ImageCarouselState createState() => new _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = new Tween(begin: 0.0, end: 18.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    Widget carousel = new Carousel(
      boxFit: BoxFit.cover,
      images: [
        new AssetImage('assets/1.png'),
        new AssetImage('assets/2.png'),
        new AssetImage('assets/1.png'),
        new AssetImage('assets/2.png'),

      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(seconds: 1),
    );

    Widget banner = new Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
      child: new Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0)),
        ),
        padding: const EdgeInsets.all(10.0),
        child: new Text(
          '',
          style: TextStyle(
            fontFamily: 'fira',
            //color: Colors.white,
          ),
        ),
      ),
      // ),
      //  ),
    );

    return new Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 40,),
          new Text(
            "\n\n\nBuy your favourites",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Proxima Nova",fontWeight: FontWeight.w700,
              fontSize: 17,
              color:Color(0xff000000),
            ),
          ),
          SizedBox(height: 16,),
          new Text(
            "\npersonalization of your \nshopping brands",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Proxima Nova",
              fontSize: 13,
              color:Color(0xff000000),
            ),
          ),
          SizedBox(height: 16,),

          new Center(
            child: new Container(
              padding: const EdgeInsets.all(20.0),
              height: screenHeight / 2,
              child: new ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: new Stack(
                  children: [
                    carousel,
                    banner,
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 16,),
          InkWell(
            onTap:()=>{ Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            )},
            child: new Container(
              height: 50.00,
              width: 251.00,
              decoration: BoxDecoration(
                color: Color(0xff606060),borderRadius: BorderRadius.circular(25.00),
              ),
              child:  Center(
                child: Text(
                  "Start Shopping",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Proxima Nova",fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color:Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap:()=>{ Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => signIn()),
    )},
                child: new Text(
                  "Sign up",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Proxima Nova",
                    fontSize: 13,
                    color:Color(0xff000000),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              new Text(
                "or",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Proxima Nova",
                  fontSize: 13,
                  color:Color(0xff000000).withOpacity(0.59),
                ),
              ),
              InkWell(
                onTap:()=>{ Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                )},
                child: new Text(
                  "Log in",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Proxima Nova",
                    fontSize: 13,
                    color:Color(0xff000000),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),

            ],
          )
        ],
      )
    );
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}