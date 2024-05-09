// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//
// class CurveProfile extends StatefulWidget {
//   const CurveProfile({super.key});
//
//   @override
//   State<CurveProfile> createState() => _CurveProfileState();
// }
//
// class _CurveProfileState extends State<CurveProfile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(children: [
//       Container(
//         height: 360,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.only(
//               bottomRight: Radius.circular(170),
//               bottomLeft: Radius.circular(170),
//             ),
//             image: DecorationImage(
//                 image: NetworkImage(
//                     'https://robbreport.com/wp-content/uploads/2022/05/hellucination07.jpg?w=1000'),
//                 fit: BoxFit.fitHeight)),
//       ),
//       SizedBox(
//         height: 50,
//       ),
//       Container(
//         height: 200,
//         width: 350,
//         child: Card(
//           clipBehavior: Clip.antiAliasWithSaveLayer,
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//           color: Colors.white,
//           semanticContainer: true,
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 8,
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       'Name : ',
//                       style:
//                           TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       'Soniya',
//                       style: TextStyle(fontSize: 15),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   children: [
//                     Text('UserName : ',
//                         style: TextStyle(
//                             fontSize: 15, fontWeight: FontWeight.bold)),
//                     Text('soniy254', style: TextStyle(fontSize: 15)),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   children: [
//                     Text('Phone NO : ',
//                         style: TextStyle(
//                             fontSize: 15, fontWeight: FontWeight.bold)),
//                     Text('+12 5455666', style: TextStyle(fontSize: 15)),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('About :',
//                         style: TextStyle(
//                             fontSize: 15, fontWeight: FontWeight.bold)),
//                 SizedBox(height: 10,),
//
//                 Expanded(
//                   child: Text(
//                       ' jfrheghfbeg9fhbif93494hebib9gfv97f0hgeryg098gub9hv3tbfih0w34yf9h9dv',
//                       style: TextStyle(fontSize: 15)),
//                 ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       SizedBox(height: 120),
//       SizedBox(
//           height: 80,
//           width: 360,
//           child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(7),
//                 gradient: LinearGradient(
//                   colors: [Colors.blue, Colors.lightBlue],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//               ),
//               child: ElevatedButton(
//                   onPressed: () {
//                    print('user is blocked ');
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor:
//                         Colors.transparent, // Make button transparent
//                     shadowColor: Colors.transparent, // Hide shadow
//                     padding: EdgeInsets.all(0), // Remove default padding
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: Text(
//                     'BLOCK USER',
//                     style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
//                   ))))
//     ]));
//   }
// }
