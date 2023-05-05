import 'package:flutter/material.dart';
import 'package:etalk/widget/end_call_button.dart';



class CallOption extends StatefulWidget {
  CallOption({super.key, required this.height, required this.width});
  double height;
  double width;
  bool isMicDisabled = false;
  bool isVideoDisabled = false;

  @override
  State<CallOption> createState() => _CallOptionState();
}

class _CallOptionState extends State<CallOption> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(widget.width * .2)),
          color: Colors.blueGrey.withOpacity(.3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  widget.isMicDisabled = !widget.isMicDisabled;
                }); 
              },
              icon: widget.isMicDisabled
                  ? Icon(Icons.mic_off_outlined)
                  : Icon(Icons.mic_outlined)),
          IconButton(
              onPressed: () {
                setState(() {
                  widget.isVideoDisabled = !widget.isVideoDisabled;
                });
              },
              icon: widget.isVideoDisabled
                  ? Icon(Icons.videocam_off_outlined)
                  : Icon(Icons.videocam_outlined)),
          EndCallButton()
        ],
      ),
    );
  }
}
