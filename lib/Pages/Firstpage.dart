import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {

  static const tab_style = TextStyle(
    fontFamily: 'Irs',
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.blueGrey,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          elevation: 20,
          margin: EdgeInsets.all(8),
          child: Container(
            margin: EdgeInsets.all(8),
            child: Column(
              children: [
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('زبان مقصد', style: tab_style,),
                    Text('زبان مبدا', style: tab_style,),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
