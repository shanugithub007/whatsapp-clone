import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
      child: Column(
        children: [
          for (int i = 1; i < 11; i++)
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 30,
                  ),
                  Padding(padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Neymar Jr", style: GoogleFonts.poppins(textStyle: TextStyle(
                        fontSize: 18,fontWeight: FontWeight.bold
                      )),),
                      SizedBox(height: 8,),
                      Text("Hi, Neymar jr, how are you", style: GoogleFonts.poppins(textStyle: TextStyle(
                        fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black54
                      )),),
                    ],
                  ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text("12:15", style: GoogleFonts.poppins(textStyle: TextStyle(
                        fontSize: 15,fontWeight: FontWeight.w500,color: Color(0xFF0FCE5E),
                      )),),
                      SizedBox(height: 6,),
                      Container(
                        alignment: Alignment.center,
                        width: 27,
                        height: 27,
                        decoration: BoxDecoration(
                          color: Color(0xFF0FCE5E),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text("10",
                        style: GoogleFonts.poppins(textStyle: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 16)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
      ),
    );
  }
}