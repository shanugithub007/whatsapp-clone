import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: Column(
          children: [
            Container(
             margin: EdgeInsets.symmetric(vertical: 12),
             child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(1.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.grey,width: 3,),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("assets/images/m2.jpeg",
                    height: 55,width: 55,
                    fit: BoxFit.cover,
                    ),
                    
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("My Status",
                    style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 8,),
                    Text("Today, 12:30 am",
                    style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.w500,color: Colors.black54),),
                    )
                  ],
                ),
                ),
                Spacer(),
                Container(
                  child: Icon(Icons.more_vert,color: Color(0xFF075E55),),
                )
              ],
             ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text("Recent Updates",
              style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.6)),),
              ),
            ),
            // for (int i = 1; i < 3; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.green,width: 3),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("assets/images/m1.jpg",
                      height: 55,width: 55,
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mammooty",
                        style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.bold,)),
                        ),
                        SizedBox(height: 8,),
                        Text("Today, 1:40",
                        style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.w500,color: Colors.black54)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
             Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.green,width: 3),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("assets/images/m6.jpg",
                      height: 55,width: 55,
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Tovino Thomas",
                        style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.bold,)),
                        ),
                        SizedBox(height: 8,),
                        Text("Today, 03:25",
                        style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.w500,color: Colors.black54)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text("Viewed Updates",
              style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.6)),),
              ),
            ),
            // for (int i = 4; i < 6; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey,width: 3),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("assets/images/m3.jpeg",
                      height: 55,width: 55,
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Aishwarya Lekshmi",
                        style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.bold,)),
                        ),
                        SizedBox(height: 8,),
                        Text("Yesterday, 06:40",
                        style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.w500,color: Colors.black54)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey,width: 3),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset("assets/images/m7.jpg",
                      height: 55,width: 55,
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Kalyani Priyadarshan",
                        style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.bold,)),
                        ),
                        SizedBox(height: 8,),
                        Text("Yesterday, 10:59",
                        style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.w500,color: Colors.black54)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
         ),
    );
  }
}