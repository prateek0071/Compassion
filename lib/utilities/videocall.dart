import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:compassion/pages/choices.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;

class VideoCallScreen extends StatefulWidget {
  @override
  _VideoCallScreenState createState() => _VideoCallScreenState();
}


class _VideoCallScreenState extends State<VideoCallScreen> {
late int _remoteUid;
_renderLocalPreview(){
  return Container(); 
}

_renderRemoteVideo(){
  if (_remoteUid != null){
    return Container();
  }else{
    return Text("please wait for the  remote video to be available",
    textAlign: TextAlign.center,
    );
  }
}

Future<void> initForAgora() async{
    

    await [Permission.microphone, Permission.camera].request();
    dynamic _engine = await RtcEngine.create(appId);
    await _engine.enableVideo();
     _engine.setEvenHandler(
      RtcEngineEventHandler(
        joinChannelSuccess: (String channel, int uid, int elapsed){
          print("localuser $uid joined");
        }, 
        userJoined: (int uid, int elapsed){
          print("remote user $uid joined");
          setState(() {
           _remoteUid = uid;
          });
        },
        userOffline : (int uid, UserOfflineReason reason){
          print("remote user $uid left the channel");
          setState(() {
          _remoteUid = 0;
          });
        },
      ),
    );
    await _engine.joinChannel(to3+, "channel1", null, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Center(
            child: _renderRemoteVideo(),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 100,
              height: 100,
              child: Center(
                child: _renderLocalPreview(),
              ),
            ),
          ),
        ],
      
    );
  }
}

