import 'package:flutter/material.dart';
import 'package:etalk/widget/call_option.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  final _localVideoRenderer = RTCVideoRenderer();

  void initRenderers() async {
    await _localVideoRenderer.initialize();
  }

  Future<void> _getUserMedia() async {
    final Map<String, dynamic> mediaConstraints = {
      'audio': true,
      'video': {
        'facingMode': 'user',
      }
    };

    MediaStream stream = await RTCFactoryNative.instance.navigator.mediaDevices
        .getUserMedia(mediaConstraints);

    _localVideoRenderer.srcObject = stream;
    setState(() {});
  }

  @override
  void initState() {
    initRenderers();
    _getUserMedia();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: const Text("Test"),
      //   leading: IconButton(onPressed: () {
      //     Navigator.of(context).pop();
      //   }, icon: Icon(Icons.arrow_back_ios)),
      // ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              //color: Colors.blueAccent,
              child: RTCVideoView(_localVideoRenderer,
                  objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SafeArea(
                child: IconButton(
                    onPressed: () async {
                      await _localVideoRenderer.srcObject!.dispose();
                      await _localVideoRenderer.dispose();
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios)),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: SafeArea(
                child: Container(
                  margin: EdgeInsets.all(14),
                  height: MediaQuery.of(context).size.height * .24,
                  width: MediaQuery.of(context).size.width * .27,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(9)),
                    //color: Colors.red,
                  ),
                  child: RTCVideoView(
                    _localVideoRenderer,
                    mirror: true,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CallOption(
                  height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width * .8,
                ),
              ),
            )
            //  RTCVideoView(_localVideoRenderer,
            //mirror: true,)
          ],
        ),
      ),
    );
  }
}
