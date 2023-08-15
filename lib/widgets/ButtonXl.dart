import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;

class ButtonXL extends StatefulWidget {
  const ButtonXL({super.key, required this.route,required this.title,required this.bg, this.arguments});
    final String route;
    final String title;
    final Color bg;
    final Object? arguments;

  @override
  State<ButtonXL> createState() => _ButtonXLState();
}

class _ButtonXLState extends State<ButtonXL> {
  @override
  Widget build(BuildContext context) {

    void nextPage(String route) {
      Navigator.pushNamed(context, route, arguments:widget.arguments);
    }
    return Container(
      child: InkWell(
        onTap: () => nextPage(widget.route),
        child: SizedBox(
          height: 70,width: 250,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: widget.bg,width: 2),
                borderRadius: BorderRadius.all(Radius.circular(15.0) ),
              color:widget.bg,
            ),
      
            child: Center(
              child: Text(widget.title,style: TextStyle(fontSize: 25,color: MyStyles.cbtnText),)
            ),
          ),
        ),
      ),
    );
  }
}
