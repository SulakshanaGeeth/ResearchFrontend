import 'package:Autism/widgets/ButtonXl.dart';
import 'package:Autism/widgets/Instructions.dart';
import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;

class Comp3Page2 extends StatefulWidget {
  const Comp3Page2({super.key});

  @override
  State<Comp3Page2> createState() => _Comp3Page2State();
}

class _Comp3Page2State extends State<Comp3Page2> {
  @override
  Widget build(BuildContext context) {
    void nextPage(String route) {
      Navigator.pushNamedAndRemoveUntil(context, route, (r) => false,
          arguments: {});
    }

    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Instructions(
          title: 'උපදෙස්',
          body:
              'ඊලග පියවරට බොත්තම එබිමෙන් පසුව දී පින්තුර ඇසුරෙන් ලමයාගෙන් ප්‍රශ්න අසන්න. පිලිතුර පටිගත කිරීමට මයික්‍රෆොනය සලකුන ඔබන්න. පටිගත කිරිම අවසන් වු පසු ඊතල සලකුන ඔබා ප්‍රතිපල පිටුවට පිවිසෙන්න.',
        ),
        SizedBox(
          height: 30,
        ),
        ButtonXL(
            route: '/Comp3Page3',
            title: 'ඊලග පියවරට',
            bg: MyStyles.cbtnPrimary),
      ],
    );
  }
}
