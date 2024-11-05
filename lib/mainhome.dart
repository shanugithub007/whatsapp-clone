import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/widgets/CallsWidget.dart';
import 'package:whatsapp/widgets/CamaraWidget.dart';
import 'package:whatsapp/widgets/ChatsWidget.dart';
import 'package:whatsapp/widgets/StatusWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075E54),
          title: Text("WhatsApp", style: GoogleFonts.openSans(textStyle: TextStyle(color: Colors.white,
        fontWeight: FontWeight.bold,)),),
        actions: [
          IconButton(icon: Icon(Icons.camera_alt,color: appcolors.whitecolor,),onPressed: () {},),
          IconButton(icon: Icon(Icons.search,color: Colors.white),onPressed: () {},),
          // IconButton(icon: Icon(Icons.more_vert,color: Colors.white),onPressed: () {},),
          PopupMenuButton <int> (
            onSelected: (_selectedIndex) {
              if(_selectedIndex == 5){
                Navigator.pushNamed(context, "settingsPage");
              }
            },

            itemBuilder: (BuildContext contesxt){
            return [
               PopupMenuItem(child: Text("New group"), value:0,),
               PopupMenuItem(child: Text("New broadcast"), value:1,),
               PopupMenuItem(child: Text("Linked devices"), value:2,),
               PopupMenuItem(child: Text("Starred messages"), value:3,),
               PopupMenuItem(child: Text("Payment"), value:4,),
               PopupMenuItem(child: Text("Settings"), value:5,),
            ];
          })
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt,color: Colors.white,),),
            Tab(child: Text("Chats", style: GoogleFonts.openSans(textStyle: TextStyle(color: Colors.white),),),),
            Tab(child: Text("Updates", style: GoogleFonts.openSans(textStyle: TextStyle(color: Colors.white),),),),
            Tab(child: Text("Calls", style: GoogleFonts.openSans(textStyle: TextStyle(color: Colors.white),),),),
          ],
        ),
        ),
        body: TabBarView(
          children: [
            CamaraWidget(),
            ChatsWidget(),
            StatusWidget(),
            CallsWidget(),
          ],
        ),
      ),
    );
  }
}