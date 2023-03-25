import 'package:flutter/material.dart';
import 'package:flutter_main_app/chat.dart';
import 'package:flutter_main_app/community.dart';
import 'package:flutter_main_app/friends.dart';
import 'package:flutter_main_app/homepage.dart';
import 'package:flutter_main_app/maps.dart';
import 'package:flutter_main_app/saftey.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(


          children: [

            // Builder(builder: (context)=>IconButton(onPressed: ()=>Scaffold.of(context).openDrawer(), icon: Icon(Icons.menu))),

            ColumnSuper(children: [            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/4,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight:Radius.circular(40)),
                color: Color(0xFFC0306F),
              ),

              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [


                  Container(
                      padding: EdgeInsets.only(right: 10),

                      child:Container(

                        child:Builder(builder: (context)=>IconButton(onPressed: ()=>Scaffold.of(context).openDrawer(), icon: Icon(Icons.menu,color: Colors.white,size: 40,),padding: EdgeInsets.only(left: 20),)),

                      )
                  ),
                  IconButton(onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>community()));}, icon: Icon(Icons.notifications_none,color: Colors.white,size: 45,),padding: EdgeInsets.only(right: 30),)
                ],
              ),

            ),
            Image.asset('images/Ellipse 3.png')],innerDistance: -70.0,),



            Expanded(child: SingleChildScrollView(
              child: Column(

                children: [
                  
                  Text("Name",style: TextStyle(fontSize: 32),),

                  Container(

                    margin: EdgeInsets.only(top: 30,left: 20,right: 20),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/7,

                    decoration: BoxDecoration(
                      color: Color(0xFFE4D0D0),
                      borderRadius: BorderRadius.all(Radius.circular(80))
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>frnds()));},child: Text("Friends",style: TextStyle(fontSize: 20),),style: ElevatedButton.styleFrom(backgroundColor:Color(0xFFC0306F),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(80))))),
                          ),
                          // child: ElevatedButton(onPressed: (){},child: Text("Friends"),),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),

            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(top:10),
              decoration: BoxDecoration(
                border: Border(bottom:BorderSide( width: 10,color:Color(0xFFC0306F))),
                // borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                color: Color(0xFFE4D0D0),
              ),
              // color: Color(0xFFE4D0D0),
              child: Row(
                children: [


                  Expanded(
                    flex: 2,
                    child: IconButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>const homepage())); }, icon: Icon(Icons.home_outlined ),iconSize: 50,),
                  ),

                  Expanded(
                    flex: 2,
                    child: IconButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>const saftey())); }, icon: Icon(Icons.health_and_safety_outlined ),iconSize: 50,),
                  ),
                  Expanded(
                    flex: 2,
                    child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const maps()));}, icon: Icon(Icons.location_on_outlined ),iconSize: 50,),
                  ),
                  Expanded(
                    flex: 2,
                    child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const community()));}, icon: Icon(Icons.people_alt_outlined ),iconSize: 50,),
                  ),
                  Expanded(
                    flex: 2,
                    child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const chat()));}, icon: Icon(Icons.chat_outlined ),iconSize: 50,),
                  ),

                  // IconButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>const saftey())); }, icon: Icon(Icons.health_and_safety_outlined ),iconSize: 60,),
                  // IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const maps()));}, icon: Icon(Icons.location_on_outlined ),iconSize: 60,),
                  // IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const community()));}, icon: Icon(Icons.people_alt_outlined ),iconSize: 60,),
                  // IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const chat()));}, icon: Icon(Icons.chat_outlined ),iconSize: 60,),
                ],

              ),

            )
          ],
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [

                  Container(
                    color: Color(0xFFC0306F),
                    child: Row(
                      children: [
                        Container(
                            padding:EdgeInsets.all(25),
                            child:Image.asset('images/Ellipse 3.png',scale: 1.5,)
                        ),
                        Container(
                          child: Column(

                            children: [
                              Container(
                                padding: EdgeInsets.only(right: 55),
                                child: Text("Name",style: TextStyle(color: Colors.white,fontSize: 30,),),
                              ),

                              Text("xyz@gmail.com",style: TextStyle(color: Colors.white,fontSize: 19,),)
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFE4D0D0),
                    ),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 25),
                          child: TextButton(onPressed: (){},child: Text("Refer A Friend",style: TextStyle(color: Colors.black45,fontSize: 20),),),
                        ),
                        Container(
                          child: TextButton(onPressed: (){},child: Text("Logout",style: TextStyle(color: Colors.black45,fontSize: 20),),),
                        ),
                        Container(
                          child: TextButton(onPressed: (){},child: Text("About",style: TextStyle(color: Colors.black45,fontSize: 20),),),
                        )
                      ],
                    ),
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
