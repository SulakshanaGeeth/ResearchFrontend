import 'package:Autism/widgets/ButtonXl.dart';
import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;

class Results extends StatefulWidget {
  const Results({super.key});

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {

  String color = '';

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    color = arg['color'];
    
    return Column(
       children: [
        SizedBox(height: 20,),
        SizedBox(
          width: 300,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color:MyStyles.cBgHeading,width: 2),
                borderRadius: BorderRadius.all(Radius.circular(15.0) ),
              color:MyStyles.cBgHeading,
            ),
        
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text('ඔබගේ ප්‍රතීඵලයට අදාළ වර්ණය වන්නේ',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: MyStyles.cHeading),)
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color:MyStyles.cBgHeading,width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(15.0) ),
                    
                    color:
                      color=='රතු පාට' ? MyStyles.cbtnError 
                      :color=='කොළ පාට' ? MyStyles.cbtnSuccess
                      : MyStyles.cWhite
                      
                    ,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(40),
                    child: Center(
                      child: Text(color,textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: MyStyles.cbtnText),)
                    ),
                  ),
                )
              ],
            ),
          ),
        ),  
        SizedBox(height: 50,),
        ButtonXL(route: '/home', title: 'පළමු පිටුවට', bg: MyStyles.cbtnPrimary),

        
       ], 
    );
  }
}
