// import 'package:flutter/material.dart';
//
// Widget oldhn = SizedBox(
//   width: 500,
//   child: DropdownButtonFormField(
//       // value: one,
//       decoration: InputDecoration(border: OutlineInputBorder()),
//       items: [
//         DropdownMenuItem(
//           child: Text("CubeSAT"),
//           value: "CubeSAT",
//         ),
//         DropdownMenuItem(
//           child: Text("CanSAT"),
//           value: "CanSAT",
//         ),
//         DropdownMenuItem(
//           child: Text("SiriSAT"),
//           value: "SiriSAT",
//         )
//       ],
//       onChanged: (value) {
//         // one = value!;
//         // setState(() {});
//       }),
// );
//
// //---------------------------------------------------------------------
// Widget drop_green_button =   Padding(
//   padding: EdgeInsets.only(left:30),
//   child: Row(
//     children: [
//       Text(
//           "Select Type of Satellite",
//           style: TextStyle (color:Colors.black ,
//               fontStyle:FontStyle.italic,
//               fontWeight: FontWeight.bold,
//               fontSize: 20 )
//       ),
//       SizedBox(width: 200),
//       SizedBox(
//         width: 200,
//         child:
//         DecoratedBox(
//           decoration: BoxDecoration(
//               color:Colors.lightGreen, //background color of dropdown button
//               border: Border.all(color: Colors.black38, width:3), //border of dropdown button
//               borderRadius: BorderRadius.circular(50), //border raiuds of dropdown button
//               boxShadow: <BoxShadow>[ //apply shadow on Dropdown button
//                 BoxShadow(
//                     color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
//                     blurRadius: 5) //blur radius of shadow
//               ]
//           ),
//           child: Padding(
//             padding: EdgeInsets.only(left:30, right:30),
//
//             child: DropdownButton<String>(
//                 // value: one,
//                 borderRadius:BorderRadius.circular(25) ,
//                 dropdownColor: Colors.red,
//
//                 // style: Theme.of(context).textTheme.titleLarge,
//                 items: [
//                   DropdownMenuItem(
//                     child: Text("CubeSAT"),
//                     value: "CubeSAT",
//                   ),
//                   DropdownMenuItem(
//                     child: Text("CanSAT"),
//                     value: "CanSAT",
//                   ),
//                   DropdownMenuItem(
//                     child: Text("SiriSAT"),
//                     value: "SiriSAT",
//                   )
//                 ],
//                 onChanged: (value) {
//                   // one = value!;
//                   // setState(  () {}   );
//                 }),
//           ),
//         ),
//
//       )
//     ],
//   ),
// ),
//
