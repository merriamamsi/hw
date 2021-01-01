
import 'package:flutter/material.dart';

import 'MyHomePage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Container(
        margin:EdgeInsets.all(16),
        child: ListView(
          children: [
            SizedBox(height: 16,),
            Text(
              "Sign In",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Proxima Nova",fontWeight: FontWeight.w700,
                fontSize: 17,
                color:Color(0xff000000),
              ),
            ),
            SizedBox(height: 35,),
            Align(
                alignment: Alignment.centerLeft,
                child:  Text(
                  "    Enter your data",
                  style: TextStyle(
                    fontFamily: "Proxima Nova",
                    fontSize: 13,
                    color:Color(0xff6c738a),
                  ),)
            ),
            TextFormField(
    validator: (value) {
         if (value.isEmpty||value==123456) {
    return 'Please enter some text';
    }},
              onChanged: (value) {
                //  this.name = value;
              },
              // controller: controller,
              decoration: InputDecoration(
                  hintText: 'Enter Your pone',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amberAccent),
                      borderRadius: BorderRadius.circular(50))),
            ),
            SizedBox(height: 16,),
            TextFormField(
    validator: (value) {
    if (value.isEmpty||value==123456) {
    return 'Please enter some text';
    }},
              onChanged: (value) {
                //  this.name = value;
              },
              // controller: controller,
              decoration: InputDecoration(
                  hintText: 'Enter Your password',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amberAccent),
                      borderRadius: BorderRadius.circular(50))),
            ),
            SizedBox(height: 16,),
            Align(child:  Text(
              "Forgot password?",
              style: TextStyle(
                fontFamily: "Proxima Nova",
                fontSize: 13,
                color:Color(0xff000000).withOpacity(0.56),
                decoration: TextDecoration.underline,
              ),
            ),),
            SizedBox(height: 16,),

            // new Container(
            //   height: 50.00,
            //   width: 251.00,
            //   decoration: BoxDecoration(
            //     color: Color(0xff606060),
            //     borderRadius: BorderRadius.circular(25.00),
            //   ),
            //   child:  Center(
            //     child: Text(
            //       "log in",
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //         fontFamily: "Proxima Nova",fontWeight: FontWeight.w700,
            //         fontSize: 14,
            //         color:Color(0xffffffff),
            //       ),
            //     ),
            //   ),
            // ),
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
                    "log in",
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

            Center(
              child: RichText(
                text: TextSpan(
                  text: "Don't have account?",
                  style: TextStyle(
                    fontFamily: "Proxima Nova",
                    fontSize: 13,
                    color:Color(0xff000000),
                    decoration: TextDecoration.underline,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: "Sign Up", style:  TextStyle(
                      fontFamily: "Proxima Nova",
                      fontSize: 13,
                      color:Color(0xff000000),
                      decoration: TextDecoration.underline,
                    ),)
                  ],
                ),),
            )

          ],),
      ),
    );
  }
}
