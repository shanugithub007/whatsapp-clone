import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CallsWidget extends StatelessWidget {
  const CallsWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
      child: Column(
        children: [
          for (int i = 1; i < 3; i++)
          Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset("assets/images/m5.jpg",
                  height: 60,width: 60,fit: BoxFit.cover,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("SRK",
                    style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(Icons.call_made,color: Color(0xFF075E55),size: 19,),
                        SizedBox(width: 5,),
                        Text("(1) Today, 09:40",
                        style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.w500,color: Colors.black54),),
                        ),
                      ],
                    ),
                  ],
                ),
                ),
                Spacer(),
                Container(
                  child: Icon(Icons.call_sharp,color: Color(0xFF075E55),),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset("assets/images/m8.jpg",
                  height: 60,width: 60,fit: BoxFit.cover,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Genelia",
                    style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(Icons.call_made,color: Color(0xFF075E55),size: 19,),
                        SizedBox(width: 5,),
                        Text("(1) Today, 10:25",
                        style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.w500,color: Colors.black54),),
                        ),
                      ],
                    ),
                  ],
                ),
                ),
                Spacer(),
                Container(
                  child: Icon(Icons.call_sharp,color: Color(0xFF075E55),),
                )
              ],
            ),
          ),
          for (int i = 4; i < 6; i++)
          Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset("assets/images/m4.jpg",
                  height: 60,width: 60,fit: BoxFit.cover,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Niranjana Anoop",
                    style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(Icons.call_received,color: Colors.red,size: 19,),
                        SizedBox(width: 5,),
                        Text("(1) Today, 12:00",
                        style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.w500,color: Colors.black54),),
                        ),
                      ],
                    ),
                  ],
                ),
                ),
                Spacer(),
                Container(
                  child: Icon(Icons.videocam,color: Color(0xFF075E55),),
                )
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}