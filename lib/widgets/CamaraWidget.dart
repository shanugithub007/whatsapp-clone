import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CamaraWidget extends StatelessWidget {
  const CamaraWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                print("Camara not available");
              },
              child: Icon(Icons.camera_alt,size: 150,color: Colors.white,),
              ),
          ],
        ),
      ),
    );
  }
}