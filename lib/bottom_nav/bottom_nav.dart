// import 'package:faykoo/screens/home_screen.dart';
// import 'package:faykoo/widgets/appBar_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:qr_flutter/qr_flutter.dart';

// class BottomNav extends StatefulWidget {
//   @override
//   _BottomNavState createState() {
//     return _BottomNavState();
//   }
// }

// class _BottomNavState extends State<BottomNav> {
//   int currentTab = 0;
//   final List<Widget> screens = [
//     HomeScreen(),
//     // SendScreen(),
//     // RecievScreen(),
//     // FactureScreen(),
//     // CardScreen()
//   ];

//   final PageStorageBucket bucket = PageStorageBucket();
//   Widget currentScreen = HomeScreen();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBar(context),
//       body: PageStorage(child: currentScreen, bucket: bucket),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: currentTab == 5 ? Colors.amber : Colors.amber,
//         child: Center(
//           child: Icon(Icons.qr_code),
//         ),
//         onPressed: () {
//           _showAsBottomSheet(context);
//         },
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(

//       // color: Colors.white12,
//         shape: CircularNotchedRectangle(),
//         notchMargin: 10,
//         child: Container(
//           height: 60,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(50.0),),
//             color: Colors.transparent,
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.white,
//                 blurRadius: 1.0,
//                 offset: Offset(0.0, 10.0),
//               ),
//             ]
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               // borderRadius: BorderRadius.circular(9),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = HomeScreen();
//                         currentTab = 0;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.home,
//                           color: currentTab == 0 ? Colors.amber : Colors.grey,
//                         ),
//                         Text(
//                           'Accueil',
//                           style: GoogleFonts.nunito(
//                             color: currentTab == 0 ? Colors.amber : Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = HomeScreen();
//                         currentTab = 1;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.money_rounded,
//                           color: currentTab == 1 ? Colors.amber : Colors.grey,
//                         ),
//                         Text(
//                           'Envoyer',
//                           style: GoogleFonts.nunito(
//                             color: currentTab == 1 ? Colors.amber : Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = HomeScreen();
//                         currentTab = 3;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.fact_check_rounded,
//                           color: currentTab == 3 ? Colors.amber : Colors.grey,
//                         ),
//                         Text(
//                           'Facture',
//                           style: GoogleFonts.nunito(
//                             color: currentTab == 3 ? Colors.amber : Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = HomeScreen();
//                         currentTab = 4;
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.card_giftcard,
//                           color: currentTab == 4 ? Colors.amber : Colors.grey,
//                         ),
//                         Text(
//                           'Cartes',
//                           style: GoogleFonts.nunito(
//                             color: currentTab == 4 ? Colors.amber : Colors.grey,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void _showAsBottomSheet(BuildContext context) {
//     showModalBottomSheet(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             top: Radius.circular(20.0),
//           ),
//         ),
//         backgroundColor: Colors.white,
//         context: context,
//         builder: (BuildContext bc) {
//           return Container(
//             height: MediaQuery.of(context).size.height * 60,
//             // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   Row(
//                     children: <Widget>[
//                       Text(
//                         "Scanner pour faire une transaction",
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 14),
//                       ),
//                       Spacer(),
//                       IconButton(
//                         onPressed: () {
//                           Navigator.of(context).pop();
//                         },
//                         icon: Icon(Icons.cancel, color: Colors.red, size: 25),
//                       ),
//                     ],
//                   ),
//                   Container(
//                     height: MediaQuery.of(context).size.height * 0.40,
//                     width: MediaQuery.of(context).size.height,
//                     child: (Center(
//                       child: SingleChildScrollView(
//                         padding: EdgeInsets.all(24),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             QrImage(
//                               data: "221772050626",
//                               version: QrVersions.auto,
//                               size: MediaQuery.of(context).size.height * 0.40,
//                             ),
//                           ],
//                         ),
//                       ),
//                     )),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         });
//   }
// }
