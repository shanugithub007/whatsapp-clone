import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
List data=["Dulqar Salmaan","SRK","Prithviraj Sukumaran","Fahad Fasil","Aishwarya Rai","Kajol","Nivin Pauly","Mohan Lal","Niranjana Anoop","Soubin Shahir","SB"];
class ChatsWidget extends StatefulWidget {
  const ChatsWidget({super.key});

  @override
  State<ChatsWidget> createState() => _ChatsWidgetState();
}

class _ChatsWidgetState extends State<ChatsWidget> {
  @override
  void initState() {
    // TODO: implement initState
    print("initally");
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
             return   Padding(
               padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
               child: InkWell(
                       onTap: () {
                         Navigator.pushNamed(context, "chatPage");
                       },
                       child: Container(
                         margin: EdgeInsets.symmetric(vertical: 12),
                         child: Row(
                           children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset("assets/images/man${index+1}.jpg",
                  width: 65,height: 65,fit: BoxFit.cover,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data[index],style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.bold)),),
                    SizedBox(height: 8,),
                    Text("Hi, Dulqar Salmaan How are you",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.w500,color: Colors.black54,)),),
                  ],
                ),
                ),
                Spacer(),
                Column(
                  children: [
                    Text("12:15", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.w500,color: Color(0xFF0FCE5E)),),),
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
                      style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w500,color: Colors.white),)
                      ),
                    )
                  ],
                )
                           ],
                         ),
                       ),
                     ),
             );
        },
      
    );
  }
}