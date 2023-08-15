import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;

class Instructions extends StatefulWidget {
  const Instructions({super.key, required this.title,required this.body});
    final String title;
    final String body;
  @override
  State<Instructions> createState() => _InstructionsState();
}

class _InstructionsState extends State<Instructions> {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: SizedBox(
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
                padding: EdgeInsets.all(8),
                child: Center(
                  child: Text(widget.title,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: MyStyles.cHeading),)
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color:MyStyles.cbtnPrimary,width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(15.0) ),
                  color:MyStyles.cbtnPrimary,
                ),
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text(widget.body,textAlign: TextAlign.center,style: TextStyle(fontSize: 18,color: MyStyles.cbtnText),)
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
