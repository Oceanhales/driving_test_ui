// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// //import 'package:giffy_dialog/giffy_dialog.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class DefaultAvailableTestTimes extends StatefulWidget {
//   DefaultAvailableTestTimes() : super();
//
//   @override
//   _DefaultAvailableTestTimesState createState() =>
//       _DefaultAvailableTestTimesState();
// }
//
// class _DefaultAvailableTestTimesState extends State<DefaultAvailableTestTimes> {
//   String Day;
//   String FullDate;
//   String Month;
//   String Time;
//   String TestCentur;
//
//   bool isLoading = true;
//   int index;
//
//
//   /*Future getWork() async {
//     var document = Firestore.instance.collection("drvlcnsbkng").document(
//         "Cardington").collection('available_dates');
//     document.getDocuments().then((QuerySnapshot snapshot) {
//       //Day = snapshot.documents.data['day'].toString();
// //      FullDate = snapshot.data['full_date'].toString();
// //      Month = snapshot.data['month'].toString();
// //      Time = snapshot.data['time'].toString();
//     snapshot.documents.forEach((f){
//       //print(f.data);
//       print(f.data['day'].toString());
//       Day=f.data['day'].toString();
//       print(Day);
//       FullDate=f.data['full_date'].toString();
//       Month=f.data['month'].toString();
//       Time=f.data['time'].toString();
//     }
//     );
//     setState(() {
//       isLoading=false;
//     });
//     });
//   }*/
//   Future<String> getToken() async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     return prefs.getString('test_centure');
//   }
//
// //  Future getWork() async {
// //    var firestore = Firestore.instance;
// //    QuerySnapshot qn = await firestore
// //        .collection("test_centers")
// //        .document("Cardington")
// //        .collection("available_dates")
// //        .getDocuments();
// //    print(qn.documents.toString());
// //    return qn.documents;
// //  }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     //getWork();
//     getToken().then((value){
//       setState(() {
//         TestCentur=value;
//         print(TestCentur);
//       });
//
//     });
//     super.initState();
//   }
//
//   _launchURL() async {
//     const url = 'https://driverpracticaltest.dvsa.gov.uk/login';
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//             child: StreamBuilder<QuerySnapshot>(
//                 stream: Firestore.instance
//                     .collection("test_centers")
//                     .document(TestCentur)
//                     .collection("available_dates")
//                     .snapshots(),
//                 builder: (BuildContext context,
//                     AsyncSnapshot<QuerySnapshot> snapshot) {
//                   switch (snapshot.connectionState) {
//                     case ConnectionState.none:
//                     // TODO: Handle this case.
//                     case ConnectionState.waiting:
//                       return Center(
//                           child: SpinKitWave(
//                               color: Colors.white,
//                               type: SpinKitWaveType.center));
//                     case ConnectionState.active:
//                     // TODO: Handle this case.
//                     case ConnectionState.done:
//                       if (snapshot.hasError) {
//                         return Text("Error: " + snapshot.error);
//                       } else {
//                         if (snapshot.hasData) {
//                           return ListView(
//                             children: snapshot.data.documents
//                                 .map((DocumentSnapshot document) {
//                               return listTileTimeTest(context, document);
//                             }).toList(),
//                           );
//                         }
//                       }
//                   }
//                 })));
//   }
//
//   Widget listTileTimeTest(BuildContext context, DocumentSnapshot post) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 2, top: 2),
//       child: Container(
//           color: Color(0xFFB5C8D2),
//           //height: 200,
//           //child: Card(
//           // elevation: 5.5,
//           child: ListTile(
//             leading: Container(
//               //height: 200,
//                 width: 90,
//                 //color: Colors.grey,
//                 decoration: BoxDecoration(
//                     color: Colors.black54,
//                     borderRadius: BorderRadius.circular(5.0)),
//                 child: Padding(
//                   padding: const EdgeInsets.only(
//                       top: 5.0, left: 5, right: 5, bottom: 5),
//                   child: Column(
//                     children: <Widget>[
//                       TextDay(post),
//                       TextMonth(post),
//                     ],
//                   ),
//                 )),
//             title: Container(
//               //color: Colors.grey,
//
//               child: Padding(
//                 padding: const EdgeInsets.all(0.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       post['time'].toString(),
//                       style:
//                       TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
//                     ),
//                     Container(
//                       //color: Colors.grey,
//                         child: Text(
//                           post['full_date'].toString(),
//                           style: TextStyle(color: Colors.black, fontSize: 14),
//                         )),
//                     fundAlert(index, post)
//                   ],
//                 ),
//               ),
//             ),
//             trailing: Container(
//               decoration: BoxDecoration(
//                   color: Color(0xFF0d6898),
//                   borderRadius: BorderRadius.circular(10.0),
//                   boxShadow: [
//                     new BoxShadow(
//                       color: Colors.black,
//                       blurRadius: 10.0,
//                     ),
//                   ]),
//               //color: Colors.blue,
//               child: Padding(
//                 padding: const EdgeInsets.only(
//                     top: 10.0, left: 15, right: 15, bottom: 10),
//                 child: InkWell(
//                   onTap: () {
//                     //dialog(context, index, post);
//                   },
//                   child: Column(
//                     children: <Widget>[
//                       Text(
//                         'BOOK',
//                         style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white),
//                       ),
//                       Text(
//                         'NOW',
//                         style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           )),
//     );
//   }
//
//   Widget TextDay(DocumentSnapshot snapshot) {
//     if (snapshot['full_date'] != null) {
//       var temp = snapshot['full_date'].toString();
//       var day = temp.split(" ").elementAt(1);
//       return Text(
//         day,
//         style: TextStyle(
//             fontSize: 22.0, color: Colors.white, fontWeight: FontWeight.bold),
//       );
//     } else {
//       return Text("no data");
//     }
//   }
//
//   Widget TextMonth(DocumentSnapshot snapshot) {
//     if (snapshot['full_date'] != null) {
//       var temp = snapshot['full_date'].toString();
//       var month = temp.split(" ").elementAt(2);
//       return Text(
//         month,
//         style: TextStyle(
//             fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold),
//       );
//     } else {
//       return Text("no data");
//     }
//   }
//
//   Widget fundAlert(int index, DocumentSnapshot post) {
//     if (post['is_refundable'] == true) {
//       return Text("");
//     } else if (post['is_refundable'] == false) {
//       return Container(
//         decoration: BoxDecoration(
//             color: Colors.amberAccent,
//             borderRadius: BorderRadius.circular(4.0)),
//         child: Padding(
//             padding: const EdgeInsets.all(2.0),
//             child: Text(
//               "Not Refundable",
//               style: TextStyle(fontSize: 10),
//             )),
//       );
//     }
//   }
//
//   // Widget dialog(BuildContext context, int index, DocumentSnapshot post) {
//   //   showDialog(
//   //       context: context,
//   //       builder: (_) => AssetGiffyDialog(
//   //         image: Image.asset(
//   //           'assets/yes.gif',
//   //           fit: BoxFit.cover,
//   //         ),
//   //         title: Text(
//   //           post['time'].toString(),
//   //           style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w800),
//   //         ),
//   //         description: Text(
//   //           post['full_date'].toString(),
//   //           textAlign: TextAlign.center,
//   //           style: TextStyle(fontSize: 20),
//   //         ),
//   //         entryAnimation: EntryAnimation.RIGHT,
//   //         buttonCancelColor: Colors.red.shade400,
//   //         onOkButtonPressed: () {
//   //           _launchURL();
//   //         },
//   //         onCancelButtonPressed: () {
//   //           Navigator.of(context).pop();
//   //         },
//   //       ));
//   // }
// }
