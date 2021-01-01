
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex=0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
List image=[
  "assets/1.png","assets/2.png","assets/1.png","assets/2.png","assets/1.png","assets/2.png","assets/1.png","assets/1.png","assets/1.png"
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black45),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.black45),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border,color: Colors.black45),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined,color: Colors.black45,),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black38,
        onTap: _onItemTapped,
      ),
      appBar: AppBar(
backgroundColor: Colors.black54 ,
        title: Text("STYLISH"),
        actions: [
          Icon(Icons.shopping_cart_outlined),
        ],
      ),
    drawer: Drawer(),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Expanded(
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 38,
                    child: Image.asset("assets/MaskGroup10.png"),
                  ),
                  SizedBox(width: 50,),
                  Column(
                    children: [
                      Row(
                        children: [
                          C("\n\n1,252","\nposts\n"),
                          SizedBox(width: 16,),
                          C("\n\n4m","\n followers\n"),
                          SizedBox(width: 16,),
                          C("\n\n256","\nfollowering\n"),
                        ],
                      ),
                      SizedBox(height: 16,),
                      InkWell(
                        onTap: ()=>{},
                        child: Container(
                          height: 38.89,
                          width: 196.35,
                          decoration: BoxDecoration(
                            color: Color(0xffeeeeee).withOpacity(0.80),borderRadius: BorderRadius.circular(6.00),
                          ),
                          child: Center(child: Text("Edit Profile")),
                        ),
                      )
                    ],
                  )

                ],
              ),

              Text("  Home Furniture"),
                Text("  Home accessories, some information about us"),
                Text("  Contact us:"),
                Text("  +925 987 952 2365"),
                Text("  Chennai, India"),
                Text(""),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: ()=>{},
                          child: Container(
                            height: 35.89,
                            width: 110.35,
                            decoration: BoxDecoration(
                              color: Color(0xffeeeeee).withOpacity(0.80),borderRadius: BorderRadius.circular(6.00),
                            ),
                            child: Center(child: Text("Add Product")),
                          ),
                        )
                        ,
                        InkWell(
                          onTap: ()=>{},
                          child: Container(
                            height: 35.89,
                            width: 110.35,
                            decoration: BoxDecoration(
                              color: Color(0xffeeeeee).withOpacity(0.80),borderRadius: BorderRadius.circular(6.00),
                            ),
                            child: Center(child: Text("Share")),
                          ),
                        ),
                        InkWell(
                          onTap: ()=>{},
                          child: Container(
                            height: 35.89,
                            width: 110.35,
                            decoration: BoxDecoration(
                              color: Color(0xffeeeeee).withOpacity(0.80),borderRadius: BorderRadius.circular(6.00),
                            ),
                            child: Center(child: Text("Contact Us")),
                          ),
                        ),


                      ],
                    ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    height: 1.30,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xffcccccc),
                  )
              ],),
              GridView.builder(
                shrinkWrap: true,
                itemCount: image.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return new Card(
                      child:  Image.asset(image[index])
                  );
                },
              )
              // Expanded(child:   GridView.count(
              //   crossAxisCount: 3,
              //   childAspectRatio: 60/ 60,
              //   children: List.generate(6, (index) {
              //     return Center(
              //       child:Image.asset("p.png"),
              //     );
              //   }),
              // ))
            ],
          ),
        ),
      ),
    );
  }
 Widget C(t1,t2) {
    return Column(
      children: [
        Text(t1),
        Text(t2),
      ],
    );
 }


}
