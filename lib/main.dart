import 'package:Autism/pages/Comp1/Comp1Intro.dart';
import 'package:Autism/pages/Comp1/Comp1Welcome.dart';
import 'package:Autism/pages/Comp1/Step1/Comp1Step1First.dart';
import 'package:Autism/pages/Comp1/Step1/Comp1Step1Second.dart';
import 'package:Autism/pages/Comp1/Step1/Comp1Step1Third.dart';
import 'package:Autism/pages/Comp1/Step2/Comp1Step2.dart';
import 'package:Autism/pages/Comp2/Comp2Page1.dart';
import 'package:Autism/pages/Comp2/Comp2Page3.dart';
import 'package:Autism/pages/Comp2/Comp2page2.dart';
import 'package:Autism/pages/Comp3/Comp3Page1.dart';
import 'package:Autism/pages/Comp3/Comp3Page2.dart';
import 'package:Autism/pages/Comp3/Comp3Page3.dart';
import 'package:Autism/pages/Comp3/Comp3Page4.dart';
import 'package:Autism/pages/Home.dart';
import 'package:Autism/pages/Results.dart';
import 'package:Autism/pages/Welcome.dart';
import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Autism',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          //colorScheme: ColorScheme.fromSeed(seedColor: MyStyles.cAppbar),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => MyTemplate(
                title: 'Autism',
                child: Welcome(),
                bg: MyStyles.cPrimary,
                appbar: false,
              ),
          '/home': (context) => MyTemplate(
                title: 'කළ යුතු කාර්යය',
                child: Home(),
                bg: MyStyles.cPrimary,
                appbar: true,
              ),
          '/Comp1Welcome': (context) => MyTemplate(
                title: 'පළමු කාර්යය',
                child: Comp1Welcome(),
                bg: MyStyles.cPrimary,
                appbar: true,
              ),
          '/Comp1Intro': (context) => MyTemplate(
                title: 'පළමු කාර්යය',
                child: Comp1Intro(),
                bg: MyStyles.cPrimary,
                appbar: true,
              ),
          '/Comp1Step1First': (context) => MyTemplate(
                title: 'පළමු කාර්යය',
                child: Comp1Step1First(),
                bg: MyStyles.cPrimary,
                appbar: true,
              ),
          '/Comp1Step1Second': (context) => MyTemplate(
                title: 'පළමු කාර්යය',
                child: Comp1Step1Second(),
                bg: MyStyles.cPrimary,
                appbar: true,
              ),
          '/Comp1Step1Third': (context) => MyTemplate(
                title: 'පළමු කාර්යය',
                child: Comp1Step1Third(),
                bg: MyStyles.cPrimary,
                appbar: true,
              ),
          '/Comp1Step2': (context) => MyTemplate(
                title: 'පළමු කාර්යය',
                child: Comp1Step2(),
                bg: MyStyles.cPrimary,
                appbar: true,
              ),
          '/Comp2Page1': (context) => MyTemplate(
                title: 'දෙවැනි කාර්යය',
                child: Comp2Page1(),
                bg: MyStyles.cPrimary,
                appbar: true,
              ),
          '/Comp2Page2': (context) => MyTemplate(
                title: 'දෙවැනි කාර්යය',
                child: Comp2Page2(),
                bg: MyStyles.cPrimary,
                appbar: true,
              ),
          '/Comp2Page3': (context) => MyTemplate(
                title: 'දෙවැනි කාර්යය',
                child: Comp2Page3(),
                bg: MyStyles.cPrimary,
                appbar: true,
              ),
          '/Comp3Page1': (context) => MyTemplate(
                title: 'තුන්වන කාර්යය',
                child: Comp3Page1(),
                bg: MyStyles.cPrimary,
                appbar: true,
              ),
          '/Comp3Page2': (context) => MyTemplate(
                title: 'තුන්වන කාර්යය',
                child: Comp3Page2(),
                bg: MyStyles.cPrimary,
                appbar: true,
              ),
          '/Comp3Page3': (context) => MyTemplate(
                title: 'තුන්වන කාර්යය',
                child: Comp3Page3(),
                bg: MyStyles.cPrimary,
                appbar: true,
              ),
          '/Comp3Page4': (context) => MyTemplate(
                title: 'තුන්වන කාර්යය',
                child: Comp3Page4(),
                bg: MyStyles.cPrimary,
                appbar: true,
              ),
          '/Results': (context) => MyTemplate(
                title: 'ප්‍රතීඵලය',
                child: Results(),
                bg: MyStyles.cPrimary,
                appbar: true,
              ),
        });
  }
}

class MyTemplate extends StatefulWidget {
  const MyTemplate(
      {super.key,
      required this.title,
      required this.child,
      this.appbar = false,
      required this.bg});
  final String title;
  final Widget child;
  final bool appbar;
  final Color bg;

  @override
  State<MyTemplate> createState() => _MyTemplateState();
}

class _MyTemplateState extends State<MyTemplate> {
  @override
  Widget build(BuildContext context) {
    void nextPage(String route) {
      Navigator.pushNamedAndRemoveUntil(context, route, (r) => false,
          arguments: {});
    }

    return Scaffold(
      backgroundColor: widget.bg,
      appBar: widget.appbar
          ? AppBar(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              backgroundColor: MyStyles.cAppbar,
              title: Text(
                widget.title,
                style: TextStyle(color: MyStyles.cWhite),
              ),
              leading: GestureDetector(
                onTap: () {
                  nextPage('/home');
                },
                child: Icon(
                  Icons.home,
                  color: MyStyles.cWhite,
                ),
              ),
            )
          : null,
      body: Container(
        decoration: BoxDecoration(
          color: widget.bg,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
