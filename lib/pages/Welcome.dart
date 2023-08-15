import 'package:Autism/widgets/ButtonXl.dart';
import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;

class Welcome extends StatefulWidget {
  const Welcome({super.key});


  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {

    void nextPage(String route) {
      Navigator.pushNamedAndRemoveUntil(context, route,(r) => false, arguments: {});
    }
    return Column(
       children: [
        SizedBox(width: 200,child: 
          Image.asset('assets/images/Home page img.png')
        ),
        SizedBox(width: 250,height: 30,),
        ButtonXL(route: '/home', title: 'ආරම්භ කරන්න', bg: MyStyles.cbtnPrimary)
       ], 
    );
  }
}
