import 'package:Autism/widgets/ButtonXl.dart';
import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;

class Comp2Page2 extends StatefulWidget {
  const Comp2Page2({super.key});

  @override
  State<Comp2Page2> createState() => _Comp2Page2State();
}

class _Comp2Page2State extends State<Comp2Page2> {
  @override
  Widget build(BuildContext context) {

    void nextPage(String route) {
      Navigator.pushNamedAndRemoveUntil(context, route,(r) => false, arguments: {});
    }
    return Column(
       children: [
        SizedBox(height: 30,),
        ButtonXL(route: '/Comp2Page3', title: 'පින්තූරය 01', bg: MyStyles.cbtnPrimary,
          arguments:{ 'text':'අක්කි එක්ක ආවෙ.', 'audio':'assets/comtwo/child05_01.wav','image':'assets/comtwo/1.jpg'}
        ),
        SizedBox(height: 30,),
        ButtonXL(route: '/Comp2Page3', title: 'පින්තූරය 02', bg: MyStyles.cbtnPrimary,
          arguments:{ 'text':'අක්කා කෙනෙක් ඉන්නවා', 'audio':'assets/comtwo/child05_02.wav','image':'assets/comtwo/2.jpg'}
        ),
        SizedBox(height: 30,),
        ButtonXL(route: '/Comp2Page3', title: 'පින්තූරය 03', bg: MyStyles.cbtnPrimary,
          arguments:{ 'text':'මල්ලි කෙනෙක් ඉන්නවා', 'audio':'assets/comtwo/child05_03.wav','image':'assets/comtwo/3.jpg'}
        ),
        SizedBox(height: 30,),
        ButtonXL(route: '/Comp2Page3', title: 'පින්තූරය 04', bg: MyStyles.cbtnPrimary,
          arguments:{ 'text':'අම්මි එක්ක ආවෙ.', 'audio':'assets/comtwo/child05_04.wav','image':'assets/comtwo/4.jpg'}
        ),
        SizedBox(height: 30,),
        ButtonXL(route: '/Comp2Page3', title: 'පින්තූරය 05', bg: MyStyles.cbtnPrimary,
          arguments:{ 'text':'තාත්ති එක්ක ආවෙ.', 'audio':'assets/comtwo/child05_05.wav','image':'assets/comtwo/5.png'}
        ),
        SizedBox(height: 30,),
        ButtonXL(route: '/Comp2Page3', title: 'පින්තූරය 06', bg: MyStyles.cbtnPrimary,
          arguments:{ 'text':'චොකලට් වලට කැමතියි.', 'audio':'assets/comtwo/child05_06.wav','image':'assets/comtwo/6.png'}
        ),
        SizedBox(height: 30,),
        ButtonXL(route: '/Comp2Page3', title: 'පින්තූරය 07', bg: MyStyles.cbtnPrimary,
          arguments:{ 'text':'තඩි බව්වෙක් ඉන්නවා', 'audio':'assets/comtwo/child05_07.wav','image':'assets/comtwo/7.jpg'}
        ),
        SizedBox(height: 30,),
        ButtonXL(route: '/Results', title: 'අවසාන ප්‍රතිඵලය', bg: MyStyles.cbtnPrimary,
          arguments:{ 'text':'', 'audio':'','image':''}
        ),
        SizedBox(height: 30,),
       ], 
    );
  }
}
