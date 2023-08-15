import 'package:Autism/widgets/Button.dart';
import 'package:Autism/widgets/Header.dart';
import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;

class Comp1Intro extends StatefulWidget {
  const Comp1Intro({super.key});

  @override
  State<Comp1Intro> createState() => _Comp1IntroState();
}

class _Comp1IntroState extends State<Comp1Intro> {
  @override
  Widget build(BuildContext context) {

    void nextPage(String route) {
      Navigator.pushNamedAndRemoveUntil(context, route,(r) => false, arguments: {});
    }
    return Column(
       children: [
        SizedBox(height: 20,),
        Header(title: 'කැමති ක්‍රියාකාරකම තෝරන්න'),
        SizedBox(height: 30,),
        Button(route: '/Comp1Step1First', title: 'පින්තුරයක් බලා කතන්දර කියවීම', bg: MyStyles.cbtnPrimary),
        SizedBox(height: 30,),
        Button(route: '/Comp1Step2', title: 'කැමති කතාවක් කීම', bg: MyStyles.cbtnPrimary),
        SizedBox(width: 180,child: 
          Image.asset('assets/images/Component 1 - img 02.png')
        ),
        
       ], 
    );
  }
}
