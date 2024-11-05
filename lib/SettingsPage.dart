//import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("Settings"),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset("assets/images/man1.jpg", width: 65,height: 65,fit: BoxFit.cover,),
                  ),
                  Padding(padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dulqar Salmaan", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.bold),),),
                        SizedBox(height: 8,),
                        Text("Hey there, I am using whatsapp", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.w500,color: Colors.black54),),)
                    ],
                  ),
                  )
                ],
              ),
            ),
            Divider(),
            ListTile(
              leading: Padding(padding: EdgeInsets.only(top: 6),
              child: Icon(Icons.key),
              ),
              title: Text("Account", style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,)),),
              subtitle: Text("Privacy, Security. change number", style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 15)),),
            ),
            ListTile(
              leading: Padding(padding: EdgeInsets.only(top: 6),
              child: Icon(Icons.message),
              ),
              title: Text("Chats", style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),),
              subtitle: Text("Theme, wallpapers, chat history", style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 15)),),
            ),
            ListTile(
              leading: Padding(padding: EdgeInsets.only(top: 6),
              child: Icon(Icons.notifications),
              ),
              title: Text("Notifications", style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),),
              subtitle: Text("Message, group & call tones", style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 15)),),
            ),
            ListTile(
              leading: Padding(padding: EdgeInsets.only(top: 6),
              child: Icon(Icons.circle_outlined),
              ),
              title: Text("Storage and Data", style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),),
              subtitle: Text("Network usage, auto-download", style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 15)),),
            ),
            ListTile(
              leading: Padding(padding: EdgeInsets.only(top: 6),
              child: Icon(Icons.help_outline_outlined),
              ),
              title: Text("Help", style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),),
              subtitle: Text("Help center, contact us, privacy policy", style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 15)),),
            ),
            ListTile(
              leading: Padding(padding: EdgeInsets.only(top: 6),
              child: Icon(Icons.people_alt),
              ),
              title: Text("Invite a Friend", style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),),
              // subtitle: Text("Privacy, Security. change number", style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 17)),),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 60),
            child: Column(
              children: [
                Text("From",style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 15),),),
                Text("Facebook",style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
              ],
            ),
            )
          ],
        ),
        ),
      ),
    );
  }
}