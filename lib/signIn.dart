
import 'package:flutter/material.dart';

import 'MyHomePage.dart';

class signIn extends StatefulWidget {
  @override
  _signInState createState() => _signInState();
}
enum SingingCharacter11 { company, name }
enum SingingCharacter { lafayette, jefferson }
class _signInState extends State<signIn> {
  SingingCharacter11 user = SingingCharacter11.name;
  String n = "";
  String NameFun(SingingCharacter11 name) {
    if (user == SingingCharacter11.name) {
      return n = "User Name";
    } else {
      return n = "Company Name";
    }
  }
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Gender';
    String dropdownValue1 = 'city';

    SingingCharacter _character = SingingCharacter.lafayette;
    SingingCharacter _character2 = SingingCharacter.lafayette;

    return Scaffold(
      body:
      Container(
        margin:EdgeInsets.all(16),
        child: ListView(
          children: [
            SizedBox(height: 16,),
            Text(
              "Sign Up",
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


    //         ListTile(
    //           title: const Text('Lafayette'),
    //           leading: Radio(
    //             value:SingingCharacter.lafayette,
    //             groupValue: _character2,
    //             onChanged: (SingingCharacter value) {
    // setState(() {
    // _character2 = value;
    // });}
    //           )
    //
    //         )  ,
            // ListTile(
            //     title: const Text('Lafayette'),
            //     leading: Radio(
            //       value:SingingCharacter.jefferson,
            //       groupValue: _character2,
            //       onChanged: (SingingCharacter value) {
            //         setState(() {
            //           _character2 = value;
            //         });
            //       }  )
            // )  ,





            Row(
              children: [
                Radio(
                  activeColor: Colors.black,
                  value: SingingCharacter11.company,
                  groupValue: user,
                  onChanged: (SingingCharacter11 value) {
                    setState(() {
                      user = value;
                    });
                  },
                ),
                Text('Company Name', style: TextStyle(color: Colors.black)),
                Radio(
                  activeColor: Colors.black,
                  value: SingingCharacter11.name,
                  groupValue: user,
                  onChanged: (SingingCharacter11 value) {
                    setState(() {
                      user = value;
                    });
                  },
                ),
                Text(
                  'User Name',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),







            TextField(
              onChanged: (value) {
                //  this.name = value;
              },
              // controller: controller,
              decoration: InputDecoration(
                  hintText: 'Enter Your User Name',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amberAccent),
                      borderRadius: BorderRadius.circular(50))),
            ),
            SizedBox(height: 16,),
            DropdownButton<String>(
              value: dropdownValue,
              // icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.deepPurple),

              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: <String>['Gender', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 16,),

            TextField(
              onChanged: (value) {
                //  this.name = value;
              },
              // controller: controller,
              decoration: InputDecoration(
                  hintText: 'Enter Your @Account name',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amberAccent),
                      borderRadius: BorderRadius.circular(50))),
            ),
            SizedBox(height: 16,),
            TextField(
              onChanged: (value) {
                //  this.name = value;
              },
              // controller: controller,
              decoration: InputDecoration(
                  hintText: 'Enter Your Instagram Account ',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amberAccent),
                      borderRadius: BorderRadius.circular(50))),
            ),
            SizedBox(height: 16,),
            TextField(
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
            TextField(
              onChanged: (value) {
                //  this.name = value;
              },
              // controller: controller,
              decoration: InputDecoration(
                  hintText: 'Enter Your City',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amberAccent),
                      borderRadius: BorderRadius.circular(50))),
            ),
            SizedBox(height: 16,),
            DropdownButton<String>(
              value: dropdownValue1,
              // icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.deepPurple),

              onChanged: (String newValue) {
                setState(() {
                  dropdownValue1 = newValue;
                });
              },
              items: <String>['city', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 16,),

            TextField(
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
            TextField(
              onChanged: (value) {
                //  this.name = value;
              },
              // controller: controller,
              decoration: InputDecoration(
                  hintText: 'Enter Your Confirm password',
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
                    "Sign in",
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
