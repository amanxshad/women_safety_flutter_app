import 'package:flutter/material.dart';
import 'package:flutter_main_app/homepage.dart';

class frnds extends StatefulWidget {
  const frnds({Key? key}) : super(key: key);

  @override
  State<frnds> createState() => _frndsState();
}

class _frndsState extends State<frnds> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: Column(
          children: [
            Text("frends here"),

            IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
          ],
        ),

      ),
    );
  }
}
