import 'package:Autism/widgets/ButtonXl.dart';
import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;

class Comp3Page1 extends StatefulWidget {
  const Comp3Page1({super.key});

  @override
  State<Comp3Page1> createState() => _Comp3Page1State();
}

class _Comp3Page1State extends State<Comp3Page1> {
  @override
  Widget build(BuildContext context) {

    void nextPage(String route) {
      Navigator.pushNamedAndRemoveUntil(context, route,(r) => false, arguments: {});
    }
    return Column(
       children: [
        SizedBox(width: 180,child: 
          Image.asset('assets/images/Component 3 - img 01.png')
        ),
        SizedBox(height: 30,),
        ButtonXL(route: '/Comp1Intro', title: 'ආරම්භ කරන්න', bg: MyStyles.cbtnPrimary),
       ], 
    );
  }
}
