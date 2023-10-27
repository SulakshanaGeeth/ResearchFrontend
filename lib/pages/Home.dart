import 'package:Autism/widgets/ButtonXl.dart';
import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    void nextPage(String route) {
      Navigator.pushNamedAndRemoveUntil(context, route, (r) => false,
          arguments: {});
    }

    return Column(
      children: [
        ButtonXL(
            route: '/Comp1Welcome',
            title: 'පළමු කාර්යය',
            bg: MyStyles.cbtnPrimary),
        SizedBox(
          height: 20,
        ),
        ButtonXL(
            route: '/Comp2Page1',
            title: 'දෙවන කාර්යය',
            bg: MyStyles.cbtnPrimary),
        SizedBox(
          height: 20,
        ),
        ButtonXL(
            route: '/Comp3Page1',
            title: 'තුන්වන කාර්යය',
            bg: MyStyles.cbtnPrimary),
        SizedBox(
          height: 20,
        ),
        ButtonXL(
            route: '/Comp3Page1',
            title: 'හතරවන කාර්යය',
            bg: MyStyles.cbtnPrimary),
        SizedBox(
          height: 20,
        ),
        //ButtonXL(route: '/home', title: 'හතරවන කාර්යය', bg: MyStyles.cbtnPrimary)
      ],
    );
  }
}
