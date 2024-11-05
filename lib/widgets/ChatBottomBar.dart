import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:custom_clippers/custom_clippers.dart';

class ChatBottomBar extends StatelessWidget {
  const ChatBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
   
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Icon(Icons.emoji_emotions_outlined,color: Colors.amber,size: 30,),
                SizedBox(width: 10,),
                Container(
                  width: 200,
                  child: TextFormField(
                    style: TextStyle(fontSize: 19),
                    decoration: InputDecoration(
                      hintText: "Message",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.attachment,color: Colors.black38,)),
                SizedBox(width: 15,),
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.camera_alt,color: Colors.black38,)),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFF0FCE5E),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(Icons.mic,size: 30,color: Colors.white,),
            ),
          )
        ],
      ),
    );
  }
}