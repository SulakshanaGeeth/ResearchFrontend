import 'dart:io';
import 'package:Autism/widgets/AudioInput.dart';
import 'package:Autism/widgets/ButtonIcon.dart';
import 'package:Autism/widgets/ImageCard.dart';
import 'package:Autism/widgets/Instructions.dart';
import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;
import 'package:Autism/Api.dart' as Api;
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

class Comp2Page3 extends StatefulWidget {
  const Comp2Page3({super.key});

  @override
  State<Comp2Page3> createState() => _Comp2Page3State();
}

class _Comp2Page3State extends State<Comp2Page3> {
  File? recordedFile;

  String text = '';
  String image = '';
  String audio = '';
  String color = '';

  Future sendRequest() async {
    try {
      Response response;
      var dio = Dio();

      ByteData assetByteData = await rootBundle.load(audio);
      List<int> assetBytes = assetByteData.buffer.asUint8List();

      FormData formData = FormData();

      formData.files.add(
        MapEntry(
          'files01',
          await MultipartFile.fromBytes(assetBytes, filename: 'audio1.wav'),
        ),
      );
      formData.files.add(
        MapEntry(
          'files02',
          await MultipartFile.fromFile(recordedFile!.path,
              filename: 'audio2.wav'),
        ),
      );
      // FormData formData = FormData.fromMap({
      //   'audio': await MultipartFile.fromBytes(assetBytes,
      //       filename: 'audio1.wav'
      //   ),
      //   'audioa': await MultipartFile.fromFile(recordedFile!.path,
      //       filename: 'audio2.wav'
      //   ),
      // });

      response = await dio.post(
        Api.Comp2Api,
        data: formData,
        // onSendProgress: (int sent, int total) {
        //   //print((100 * sent) / total);
        //   print(formData.files.map((e) => print(e.value.filename)));
        // },
      );

      if (response.statusCode == 200) {
        if (response.data["pronounce-validation"] == "autism") {
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
        print(response.data["pronounce-validation"]);
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
    text = arg['text'];
    image = arg['image'];
    audio = arg['audio'];

    return Column(
      children: [
        ImageCard(image: image),
        SizedBox(
          height: 10,
        ),
        Instructions(
          title: 'උපදෙස්',
          body: text,
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
