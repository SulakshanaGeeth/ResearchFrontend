import 'dart:io';
import 'package:flutter/material.dart';
import 'package:Autism/MyStyles.dart' as MyStyles;

//import 'package:audioplayers/audioplayers.dart';
import 'package:record/record.dart';
import 'package:path_provider/path_provider.dart';

//import 'package:flutter_secure_storage/flutter_secure_storage.dart';

typedef MyCallback = void Function(File param);


class AudioInput extends StatefulWidget {
  const AudioInput({super.key, required this.audio,required this.rtn});
  final MyCallback rtn;
  final String audio;
 

  @override
  State<AudioInput> createState() => _AudioInputState();
}

class _AudioInputState extends State<AudioInput> {
    File ?recordedFile;
    // final player = AudioPlayer();
    // PlayerState isPlaying = PlayerState.stopped;

    final record = Record();
    bool isRecod = false;

    void initState() {
        super.initState();
        // player.onPlayerStateChanged
        //     .listen((PlayerState s) => {setState(() => isPlaying = s)});
        //audioFileSetup();
        
    }
    // Future sendRequest() async {
    //   try {
    //     Response response;
    //     var dio = Dio();

    //     FormData formData = FormData.fromMap({
    //       'audio': await MultipartFile.fromFile(recordedFile!.path,
    //           //filename: 'image.jpg'
    //         ),
    //     });

    //     response = await dio.post(
    //       Api.Part1Api,
    //       data: formData,
    //       onSendProgress: (int sent, int total) {
    //         print((100 * sent) / total);
    //       },
    //     );
    //     if (response.statusCode == 200) {
    //       var x = response.data['stage'];
    //       //print(response);
    //       widget.rtn(x);
    //       //saveData(x);

    //     }
    //   } catch (e) {
    //     print(e);
    //   }
    // }

  // void saveData(srt) async {
  //   final storage = FlutterSecureStorage();
  //   await storage.write(key: 'stage', value: srt);
  // }
 
    // void playAudio(String audioPath) async {
    //     if (isPlaying == PlayerState.stopped ||
    //         isPlaying == PlayerState.completed) {
    //     await player.setSource(DeviceFileSource(audioPath));
    //     await player.resume();
    //     } else if (isPlaying == PlayerState.paused) {
    //     await player.setSource(DeviceFileSource(audioPath));
    //     await player.resume();
    //     } else {
    //     await player.pause();
    //     }
    // }
    
    void audioRecodToggle(){
      if(isRecod==false){
        audioRecod();
      }
      else{
        stopRecord();
      }
    }
    void audioRecod()async{
      if (await record.hasPermission()) {
        setState(() {
          isRecod =true;
        });
        String appDocDir = (await getApplicationDocumentsDirectory()).path;
        String filePath = '$appDocDir/'+widget.audio+'.wav';
        
        //print(filePath);
          await record.start(
            path: filePath,
            encoder: AudioEncoder.aacLc, // by default
            bitRate: 128000, // by default
            //sampleRate: 44100, // by default
            
          );
        
      }
    }

    void stopRecord()async{
      setState(() {
          isRecod =false;
      });
      await record.stop(); 
      audioFileSetup();
      //sendRequest();
      
    }

    void audioFileSetup()async{
      String appDocDir = (await getApplicationDocumentsDirectory()).path;
      String filePath = '$appDocDir/'+widget.audio+'.wav'; 
      recordedFile = File(filePath);
      widget.rtn( File(filePath) );
      print(filePath);
    }
    
    void nextPage() {
        Navigator.pushNamed(context, '/', arguments: {
            'tone':1
        });
    }
    
    @override
    Widget build(BuildContext context) {
        
        return SizedBox(
            width: 120,
            height: 60,
            child: InkWell(
              onTap: (){audioRecodToggle();},
              child: Container(
                  decoration: BoxDecoration(
                      color: !isRecod ? MyStyles.cbtnPrimary:Colors.red,
                      borderRadius:BorderRadius.all(Radius.circular(15))
                  ),
                  child: Icon(Icons.mic, size: 40,color: MyStyles.cbtnText,),
              ),
            ),
        );
    }
}