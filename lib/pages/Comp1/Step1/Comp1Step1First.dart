import 'package:Autism/widgets/Header.dart';
import 'package:Autism/widgets/ImageCard.dart';
import 'package:flutter/material.dart';

class Comp1Step1First extends StatefulWidget {
  const Comp1Step1First({super.key});

  @override
  State<Comp1Step1First> createState() => _Comp1Step1FirstState();
}

class _Comp1Step1FirstState extends State<Comp1Step1First> {

  void nextPage(String route,String image) {
      Navigator.pushNamed(context, route, arguments: {
        'image':image
      });
  }

  @override
  Widget build(BuildContext context) {

    
    return Column(
       children: [
        SizedBox(height: 20,),
        Header(title: 'කැමති ක්‍රියාකාරකම තෝරන්න'),
        SizedBox(height: 30,),
        InkWell(
          onTap: ()=>nextPage('/Comp1Step1Second','assets/images/Component 1 - img 03.png'),
          child: ImageCard(image: 'assets/images/Component 1 - img 03.png')
        ),
        SizedBox(height: 30,),
        InkWell(
          onTap: ()=>nextPage('/Comp1Step1Second','assets/images/Component 1 - img 04.png'),
          child: ImageCard(image: 'assets/images/Component 1 - img 04.png')
        ),
        
       ], 
    );
  }
}
