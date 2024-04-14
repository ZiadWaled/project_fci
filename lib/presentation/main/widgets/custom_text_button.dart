
import 'package:flutter/material.dart';
class catigory extends StatelessWidget {
  catigory({this.text,this.onDoubleTap,this.width,this.height});
  String ?text;
  Function()? onDoubleTap;
  double ?width;
  double ?height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onDoubleTap,
      child: Container(
        alignment: Alignment.center,
        width:width!,
        height: height!,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.white),

        ),


        child: Text(
          text!,
          textAlign: TextAlign.center,
          overflow: TextOverflow.clip,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),

      ),
    );


  }
}