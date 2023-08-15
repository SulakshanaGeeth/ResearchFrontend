import 'package:Autism/widgets/ButtonXl.dart';
import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;

class Comp2Page1 extends StatefulWidget {
  const Comp2Page1({super.key});

  @override
  State<Comp2Page1> createState() => _Comp2Page1State();
}

class _Comp2Page1State extends State<Comp2Page1> {
  @override
  Widget build(BuildContext context) {

    void nextPage(String route) {
      Navigator.pushNamedAndRemoveUntil(context, route,(r) => false, arguments: {});
    }
    return Column(
       children: [
        SizedBox(width: 180,child: 
          Image.asset('assets/images/Component 2 - img 01.png')
        ),
        SizedBox(height: 30,),
        ButtonXL(route: '/Comp1Intro', title: 'ආරම්භ කරන්න', bg: MyStyles.cbtnPrimary),
       ], 
    );
  }
}
