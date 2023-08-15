import 'package:Autism/widgets/ButtonXl.dart';
import 'package:Autism/widgets/Instructions.dart';
import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;

class Comp1Step1Second extends StatefulWidget {
  const Comp1Step1Second({super.key});

  @override
  State<Comp1Step1Second> createState() => _Comp1Step1SecondState();
}

class _Comp1Step1SecondState extends State<Comp1Step1Second> {

  String image = '';

  void nextPage(String route) {
    Navigator.pushNamed(context, route, arguments: {
      'image':image
    });
  }

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    image = arg['image'];
    
    return Column(
       children: [
        SizedBox(height: 20,),
        Instructions(title: 'උපදෙස්',body: 'මීළඟ පියවරෙන් පසු, දරුවාට විනාඩි දෙකක් කතා කිරීමට සලස්වන්න',),
        SizedBox(height: 50,),
        ButtonXL(route: '/Comp1Step1Third',arguments:{'image':image}, title: 'ඊළඟ පියවර', bg: MyStyles.cbtnPrimary),

        
       ], 
    );
  }
}
