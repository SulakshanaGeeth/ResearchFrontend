import 'package:Autism/widgets/ButtonXl.dart';
import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;

class Comp3Page3 extends StatefulWidget {
  const Comp3Page3({super.key});

  @override
  State<Comp3Page3> createState() => _Comp3Page3State();
}

class _Comp3Page3State extends State<Comp3Page3> {
  @override
  Widget build(BuildContext context) {

    void nextPage(String route) {
      Navigator.pushNamedAndRemoveUntil(context, route,(r) => false, arguments: {});
    }
    return Column(
       children: [
        SizedBox(height: 30,),
        ButtonXL(route: '/Comp3Page4', title: 'ප්‍රශ්නය 01', bg: MyStyles.cbtnPrimary,
          arguments:{ 'text':'පුතා කවුරු එක්කද ආවේ?', 'audio':'assets/comthree/Answer1.wav','image':'assets/comthree/1.png'}
        ),
        SizedBox(height: 30,),
        ButtonXL(route: '/Comp3Page4', title: 'ප්‍රශ්නය 02', bg: MyStyles.cbtnPrimary,
          arguments:{ 'text':'මේ පින්තුරයේ ඇති බොලයේ පාට මොකක්ද?', 'audio':'assets/comthree/Answer2.wav','image':'assets/comthree/2.jpg'}
        ),
        SizedBox(height: 30,),
        ButtonXL(route: '/Comp3Page4', title: 'ප්‍රශ්නය 03', bg: MyStyles.cbtnPrimary,
          arguments:{ 'text':'මේ පින්තුරයේ ඇති වාහනය මොකක්ද?', 'audio':'assets/comthree/Answer3.wav','image':'assets/comthree/3.jpg'}
        ),
        SizedBox(height: 30,),
        ButtonXL(route: '/Comp3Page4', title: 'ප්‍රශ්නය 04', bg: MyStyles.cbtnPrimary,
          arguments:{ 'text':'පුතාට මොනවද බොන්න ඕනෙ?', 'audio':'assets/comthree/Answer4.wav','image':'assets/comthree/4.jpg'}
        ),
        SizedBox(height: 30,),
        ButtonXL(route: '/Comp3Page4', title: 'ප්‍රශ්නය 05', bg: MyStyles.cbtnPrimary,
          arguments:{ 'text':'මේ පින්තුරේ ඉන්නෙ කවුද?', 'audio':'assets/comthree/Answer5.wav','image':'assets/comthree/5.png'}
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
