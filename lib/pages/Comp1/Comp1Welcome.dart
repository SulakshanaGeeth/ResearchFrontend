import 'package:Autism/widgets/ButtonXl.dart';
import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;

class Comp1Welcome extends StatefulWidget {
  const Comp1Welcome({super.key});

  @override
  State<Comp1Welcome> createState() => _Comp1WelcomeState();
}

class _Comp1WelcomeState extends State<Comp1Welcome> {
  @override
  Widget build(BuildContext context) {

    void nextPage(String route) {
      Navigator.pushNamedAndRemoveUntil(context, route,(r) => false, arguments: {});
    }
    return Column(
       children: [
        SizedBox(width: 180,child: 
          Image.asset('assets/images/Component 1 - img 01.png')
        ),
        SizedBox(height: 30,),
        ButtonXL(route: '/Comp1Intro', title: 'ආරම්භ කරන්න', bg: MyStyles.cbtnPrimary),
       ], 
    );
  }
}
