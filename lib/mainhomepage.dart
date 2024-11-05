// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';

// // class HomeScreenss extends StatefulWidget {
// //   const HomeScreenss({super.key});

// //   @override
// //   State<HomeScreen> createState() => _HomeScreenState();
// // }

// // class _HomeScreenState extends State<HomeScreen> {
// //   @override
// //   _HomescreenState createState() => _HomescreenState();

// //   @override
// //   Widget build(BuildContext context) {
// //     // TODO: implement build
// //     throw UnimplementedError();
// //   }
// // }

// // class _HomescreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
// //   late TabController _controller;
// //   @override
// //   void initState() {
    
// //     // TODO: implement initState
// //     super.initState();
// //     _controller = TabController(length: 4, vsync: this, initialIndex:0);
// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar:AppBar(
// //         backgroundColor: Color(0xFF075E54),
// //         title: Text("WhatsApp", style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,
// //         fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),),
// //         actions: [
// //           IconButton(icon: Icon(Icons.camera_alt,color: Colors.white,),onPressed: () {},),
// //           IconButton(icon: Icon(Icons.search,color: Colors.white),onPressed: () {},),
// //           IconButton(icon: Icon(Icons.more_vert,color: Colors.white),onPressed: () {},),
// //         ],
// //         bottom: TabBar(
// //           controller: _controller, 
// //           tabs: [
// //             Tab(
// //               icon: Icon(Icons.groups)
// //               ),
// //             Tab(text:"Chats"),
// //             Tab(
// //               text:"Updates"
// //               ),
// //             Tab(
// //               text:"Calls"
// //               ),
// //           ],
// //         ),
// //       ),
// //       body: TabBarView(
// //         controller: _controller,
// //         children: [
// //           Text("camera1"),
// //           Text("camera2"),
// //           Text("camera3"),
// //           Text("camera4"),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// // import 'package:flutter_svg_provider/flutter_svg_provider.dart';

// class CustomCard extends StatelessWidget {
//   const CustomCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {},
//       child: Column(
//         children: [
//           ListTile(
//             leading: CircleAvatar(
//               radius: 30,
//             ),
//             title: Text("Neymar Jr", style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 16,
//             fontWeight: FontWeight.bold,color: Colors.black)),),
//             subtitle: Row(
//               children: [
//                 Icon(Icons.done_all),
//                 SizedBox(width: 3,),
//                 Text("Hi Neymar Jr", style: GoogleFonts.openSans(textStyle: TextStyle(fontSize: 13,)),),
//               ],
//             ),
//             trailing: Text("18:04"),
//           ),
//         ],
//       ),
//     );
//    Padding(
//      padding: const EdgeInsets.only(right: 20,left: 80),
//      child: Divider(thickness: 1.5,),
//    );
//   }
// }