import 'package:flutter/material.dart';
import 'package:login_page_2/animation.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
          width: width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Colors.deepOrange,
                    Colors.orange,
                    Colors.orangeAccent
                  ])
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100,),
              Padding(
                padding:EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimation(1, Text("Login" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 30),)),
                    FadeAnimation(1 ,Text("Welcome Back" , style: TextStyle(color: Colors.white , fontSize: 25),),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(60) , topRight: Radius.circular(60)),
                      color: Colors.white
                  ),
                  child: Padding(padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        SizedBox(height: 40,),
                        FadeAnimation(1, Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                color:Color.fromRGBO(225, 95, 27, .3),
                                blurRadius: 20,
                                offset: Offset(0,10),
                              ),]
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Email or Phone number" ,
                                    hintStyle: TextStyle(color: Colors.grey) ,
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  // border: Border(bottom: BorderSide(color: Colors.grey))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Password" ,
                                    hintStyle: TextStyle(color: Colors.grey) ,
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ),
                        SizedBox(height: 30,),
                        FadeAnimation(1, Center(child: TextButton(onPressed: () {}, child: Text("Forgot Password?", style: TextStyle(color: Colors.grey),)))),
                        SizedBox(height: 8,),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          child: FadeAnimation(1, MaterialButton(
                            onPressed: () {},
                            color: Colors.deepOrangeAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            height: 50,
                            child: Center(
                              child: Text("Login", style: TextStyle(color: Colors.white),),
                            ),
                          )),
                        ),
                        SizedBox(height: 20,),
                        FadeAnimation(1, Text("Continue with social media" , style: TextStyle(color: Colors.grey),)),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FadeAnimation(1, MaterialButton(
                              onPressed: () {},
                              color: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              height: 50,
                              child: Center(
                                child: Text("Facebook", style: TextStyle(color: Colors.white),),
                              ),
                            )),
                            FadeAnimation(1, MaterialButton(
                              onPressed: () {},
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              height: 50,
                              child: Center(
                                child: Text("GitHub", style: TextStyle(color: Colors.white),),
                              ),
                            )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
