import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp/widgets/ChatBottomBar.dart';
import 'package:whatsapp/widgets/ChatSample.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(65), 
      child: AppBar(
        backgroundColor: Color(0xFF075E54),
        elevation: 0,
        leading: Padding(padding: EdgeInsets.only(top: 10,left: 5),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,size: 25,color: Colors.white,),
        ),
        ),
        leadingWidth: 20,
        title: Padding(padding: EdgeInsets.only(top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset("assets/images/m9.jpeg",width: 45,height: 45,fit: BoxFit.cover,),
            ),
            Padding(padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nazriya Nazim", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 19,
                fontWeight: FontWeight.bold,color: Colors.white),),),
                SizedBox(height: 5,),
                Text("Online", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,color: Colors.white.withOpacity(0.5)),),),
              ],
            ),
            ),
          ],
        ),
        ),
        actions: [
          Padding(padding: EdgeInsets.only(top: 10,right: 25),
          child: Icon(Icons.videocam_rounded,size: 25,color: Colors.white,),
          ),
          Padding(padding: EdgeInsets.only(top: 10,right: 20),
          child: Icon(Icons.call,size: 25,color: Colors.white),
          ),
          Padding(padding: EdgeInsets.only(top: 10,right: 10),
          child: Icon(Icons.more_vert,size: 25,color: Colors.white),
          ),
        ],
      ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/wpwallpaper.jpg"),
          fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.only(
            top: 10,left: 8,right: 8,bottom: 80,
          ),
          child: Column(
            children: [
              Container(
                width: 300,
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xFFFFF3C2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.withOpacity(0.5),
                    blurRadius: 8,
                    ),
                  ],
                ),
                child: Text("Message and calls are end-to-end encrypted, No one outside of this chat can read or listen. Tap to learn more.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
                ),
              ),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),
              ChatSample(),
            ],
          ),
          ),
        ),
      ),
      bottomSheet: ChatBottomBar(),
    );
  }
}