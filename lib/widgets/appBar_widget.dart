// import 'package:animated_theme_switcher/animated_theme_switcher.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// AppBar buildAppBar(BuildContext context) {

//   return AppBar(
//     automaticallyImplyLeading: false, // Don't show the leading button
//     title: Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: <Widget>[
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               "Bonjour",
//               style: TextStyle(
//                 fontSize: 12,
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(
//               height: 3,
//             ),
//             Text(
//               "Papa Ndiouga",
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.black,
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//           ],
//         ),
//       ],
//     ),
//     leadingWidth: 250,
//     backgroundColor: Colors.transparent,
//     elevation: 0,

//     actions: [
//       ThemeSwitcher(
//         builder: (context) => Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Container(
//                 child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       Icon(
//                         Icons.notifications,
//                         color: Colors.amber,
//                       ),
//                       SizedBox(
//                         width: 15,
//                       ),
//                       PopupMenuButton(
//                           itemBuilder: (context) => [
//                             PopupMenuItem(
//                               child: Row(
//                                 children: [
//                                   Icon(
//                                     Icons.person,
//                                     color: Colors.amber,
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.only(left: 10.0),
//                                     child: Text('Mon Compte'),
//                                   )
//                                 ],
//                               ),
//                             ),
//                             PopupMenuItem(
//                               child: Row(
//                                 children: [
//                                   Icon(
//                                     Icons.logout,
//                                     color: Colors.red,
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.only(left: 10.0),
//                                     child: Text('Déconnexion'),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ],
//                           icon: CircleAvatar(
//                           radius: 24,
//                           backgroundColor: Colors.transparent,
//                           child: ClipOval(
//                             child: Image.asset(
//                               "assets/al.jpg",
//                               width: 60,
//                               height: 60,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                           offset: Offset(0, 50),
//                         ),
//                     ]),
//                 padding: EdgeInsets.symmetric(horizontal: 10),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ],
//   );
// }
