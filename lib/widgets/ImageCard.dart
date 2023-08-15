import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;

class ImageCard extends StatefulWidget {
  const ImageCard({super.key, required this.image});
    final String image;
  @override
  State<ImageCard> createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: SizedBox(
        width: 300,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color:MyStyles.cBgHeading,width: 5),
              borderRadius: BorderRadius.all(Radius.circular(0.0) ),
            color:MyStyles.cBgHeading,
          ),
      
          child: Center(
            child: Image.asset(widget.image)
          ),
        ),
      ),
    );
  }
}
