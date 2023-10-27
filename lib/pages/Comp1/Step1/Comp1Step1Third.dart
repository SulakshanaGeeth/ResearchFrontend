import 'dart:io';
import 'package:Autism/widgets/AudioInput.dart';
import 'package:Autism/widgets/ButtonIcon.dart';
import 'package:Autism/widgets/ImageCard.dart';
import 'package:Autism/widgets/Instructions.dart';
import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;
import 'package:Autism/Api.dart' as Api;
import 'package:dio/dio.dart';

class Comp1Step1Third extends StatefulWidget {
  const Comp1Step1Third({super.key});

  @override
  State<Comp1Step1Third> createState() => _Comp1Step1ThirdState();
}

class _Comp1Step1ThirdState extends State<Comp1Step1Third> {
  String image = '';

  File? recordedFile;

  String color = '';

  Future sendRequest() async {
    try {
      Response response;
      var dio = Dio();

      FormData formData = FormData.fromMap({
        'audio': await MultipartFile.fromFile(
          recordedFile!.path,
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
        if (response.data["abnomility-sentiment"] == "autism") {
          setState(() {
            color = "රතු පාට";
          });
          // var color = "Red";
        } else {
          // color = "Green";
          setState(() {
            color = "කොළ පාට";
          });
        }
        print(response.data);
        print(response.data["abnomility-sentiment"]);
        print(color);
        nextPage('/Results');
      }
    } catch (e) {
      print(e);
    }
  }

  void nextPage(String route) {
    Navigator.pushNamed(context, route, arguments: {'color': color});
  }

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    image = arg['image'];

    return Column(
      children: [
        ImageCard(image: image),
        SizedBox(
          height: 10,
        ),
        Instructions(
          title: 'උපදෙස්',
          body: 'පින්තූරය විස්තර කිරීමට දරුවාට කියන්න',
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AudioInput(
                audio: 'audio',
                rtn: (reco) {
                  setState(() {
                    recordedFile = reco;
                  });
                  print('recorded');
                }),
            recordedFile != null
                ? ButtonIcon(
                    click: () => sendRequest(),
                    icon: Icons.arrow_forward_ios,
                    bg: MyStyles.cbtnPrimary,
                  )
                : SizedBox(),
          ],
        )
      ],
    );
  }
}
