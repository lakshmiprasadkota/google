
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.all(10),
              child:Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundImage:AssetImage("assests/images/unnamed.png"),
                        backgroundColor: Colors.white,
                        radius: 20,
                      ),
                    ],
                  ),


                  Container(
                    alignment: Alignment.center,
                    child: Image.asset("assests/images/google.png" , height: 150, width: 250,)
                  ),
                  Container(

                      child: TextField(
                        decoration: InputDecoration(

                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                             Image.asset("assests/images/vocie.png" , height: 25, width: 20,),
                              SizedBox(width: 5,),
                              Image.asset("assests/images/lense.png" , height: 40, width: 50,),
                              SizedBox(width: 5,),

                            ],
                          ),

                          hintText: 'Search the items here',

                          enabledBorder: OutlineInputBorder(

                            borderRadius: BorderRadius.all(Radius.circular(33.0)),
                            borderSide: BorderSide(color: Colors.black26),

                          ),
                          isDense: true,
                        ),

                      ),

                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: 400,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                      color: Colors.grey,
                              offset: Offset(0,0),
                              blurRadius: 10,
                            ),
                          ],

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Row(
                            children: [
                              Image.asset("assests/images/wheater.png" , height: 50 , width: 40,),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10,),
                                  Text("28 degrees" , style: TextStyle(fontSize: 12),),
                                  SizedBox(height: 10,),
                                  Text("Mostly cloiud" , style: TextStyle(fontSize: 10 , color: Colors.grey),)
                                ],
                              ),
                            ],
                          ),


                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Text("31 /19"),
                              Row(
                                children: [
                                  Icon(Icons.umbrella),
                                  Text("20% today" , style: TextStyle(fontSize: 10 , color: Colors.grey),)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50,
                  ),
                  Text("Choose your Discover language",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 16),),
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 80,
                          width: 170,
                          decoration: BoxDecoration(
                              color:  Color(0xFF87ceeb),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              Icon(Icons.circle ,color:  Color(0xFFffdab9),),
                              SizedBox(width: 15,),
                             Text("Telugu\nతెలుగు")
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 80,
                          width: 170,
                          decoration: BoxDecoration(
                              color:  Color(0xFFffdab9),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              Icon(Icons.circle ,color: Color(0xFF87ceeb)),
                              SizedBox(width: 15,),
                              Text("Hindi\nहिंदी")
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 25,),
                  Container(
                    child: Image.asset("assests/images/gvt.png" ,height: 200, width: 200,),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}