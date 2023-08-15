import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;

class Button extends StatefulWidget {
  const Button({super.key, required this.route,required this.title,required this.bg, this.arguments});
    final String route;
    final String title;
    final Color bg;
    final Object? arguments;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {

    void nextPage(String route) {
      Navigator.pushNamed(context, route, arguments: widget.arguments);
    }
    return Container(
      child: InkWell(
        onTap: () => nextPage(widget.route),
        child: SizedBox(
          width: 250,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: widget.bg,width: 2),
                borderRadius: BorderRadius.all(Radius.circular(15.0) ),
              color:widget.bg,
            ),
      
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: Text(widget.title,textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color: MyStyles.cbtnText),)
              ),
            ),
          ),
        ),
      ),
    );
  }
}
