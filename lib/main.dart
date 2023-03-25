import 'package:flutter/material.dart';
import 'package:flutter_main_app/homepage.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: Container(
          child: Container(
            padding: EdgeInsets.all(32),
            child: Column(
              children: [
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const homepage()));
                }, child: Text("next"))
              ],
            ),
          ),
        ),

      ),
    );
  }
}
