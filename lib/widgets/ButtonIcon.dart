import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;

class ButtonIcon extends StatefulWidget {
  const ButtonIcon({super.key, required this.click,required this.icon,required this.bg});
    final VoidCallback click;
    final IconData icon;
    final Color bg;


  @override
  State<ButtonIcon> createState() => _ButtonIconState();
}

class _ButtonIconState extends State<ButtonIcon> {
  @override
  Widget build(BuildContext context) {


    return Container(
      child: InkWell(
        onTap: widget.click,
        child: SizedBox(
          height: 60,width: 120,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: widget.bg,width: 2),
                borderRadius: BorderRadius.all(Radius.circular(15.0) ),
              color:widget.bg,
            ),
      
            child: Center(
              child: Icon(widget.icon, size: 40,color: MyStyles.cbtnText,)
            ),
          ),
        ),
      ),
    );
  }
}
