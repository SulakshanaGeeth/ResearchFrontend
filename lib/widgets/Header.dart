import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;

class Header extends StatefulWidget {
  const Header({super.key, required this.title});
    final String title;
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: SizedBox(
        width: 300,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color:MyStyles.cBgHeading,width: 2),
              borderRadius: BorderRadius.all(Radius.circular(15.0) ),
            color:MyStyles.cBgHeading,
          ),
      
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Center(
              child: Text(widget.title,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: MyStyles.cHeading),)
            ),
          ),
        ),
      ),
    );
  }
}
