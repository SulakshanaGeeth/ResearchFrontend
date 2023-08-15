import 'dart:io';
import 'package:Autism/widgets/AudioInput.dart';
import 'package:Autism/widgets/ButtonIcon.dart';
import 'package:Autism/widgets/Instructions.dart';
import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;
import 'package:Autism/Api.dart' as Api;
import 'package:dio/dio.dart';

class Comp1Step2 extends StatefulWidget {
  const Comp1Step2({super.key});

  @override
  State<Comp1Step2> createState() => _Comp1Step2State();
}

class _Comp1Step2State extends State<Comp1Step2> {

  File ?recordedFile;

  String color = '';

  Future sendRequest() async {
      try {
        Response response;
        var dio = Dio();

        FormData formData = FormData.fromMap({
          'audio': await MultipartFile.fromFile(recordedFile!.path,
              //filename: 'image.jpg'
            ),
        });

        response = await dio.post(
          Api.Comp1Api,
          data: formData,
          onSendProgress: (int sent, int total) {
            //print((100 * sent) / total);
          },
        );
        if (response.statusCode == 200) {
          setState(() {
            color = response.data['color'];
          });
          print(color);
          nextPage('/Results');

        }
      } catch (e) {
        print(e);
      }
    }

  void nextPage(String route) {
    Navigator.pushNamed(context, route, arguments: {
      'color':color
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Column(
       children: [
        Instructions(title: 'උපදෙස්',body: 'ඔබේ දරුවාට කතන්දරය කීම ආරම්ඹ කරන්න යැයි පවසන්න',),
        SizedBox(height: 50,),

        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AudioInput(audio: 'audio', rtn: (reco){
              setState(() {
                recordedFile = reco;
              });
              print('recorded');
            }),
    
            recordedFile !=null ? ButtonIcon(click: () => sendRequest(), icon: Icons.arrow_forward_ios, bg: MyStyles.cbtnPrimary,):SizedBox(),
          ],
        )
        
       ], 
    );
  }
}
