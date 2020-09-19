import 'package:flutter/material.dart';
class AddTestCenter extends StatefulWidget {
  @override
  _AddTestCenterState createState() => _AddTestCenterState();
}

class _AddTestCenterState extends State<AddTestCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add test centers'),
          centerTitle: true,
        ),
        body:
            CustomCard1()
    );
  }
}
class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    Key key,
  }) : super(key: key);

//class CustomCard1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //return ListView.builder(
      //itemBuilder: (BuildContext context, int index){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 8,right: 8),
              child: Container(
                height: 80,
                color: Color(0xFFB5C8D2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width*.70,
                        //color: Colors.black26,
                        child: Text("Cardington", style: TextStyle(color:Color(0xFF0d6898) ,fontWeight: FontWeight.w600, fontSize: 30),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: FloatingActionButton(
                          elevation: 10,
                          backgroundColor: Colors.white,
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              'IN',
                              style: TextStyle(
                                  fontSize:  20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      //},
    //);
  }
}

// //import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// //import 'package:flutter_app/UI%20Resorce/colors.dart';
// class AddTestCenter extends StatefulWidget {
//   @override
//   _AddTestCenterState createState() => _AddTestCenterState();
// }
//
// class _AddTestCenterState extends State<AddTestCenter> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemBuilder: (BuildContext context, int index){
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(top: 8,left: 8,right: 8),
//               child: Container(
//                 height: 80,
//                 color: Colors.blue.shade50,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         width: MediaQuery.of(context).size.width*.70,
//                         //color: Colors.black26,
//                         child: Text("Test Center name", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600, fontSize: 22),),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         child: FloatingActionButton(
//                           elevation: 10,
//                           backgroundColor: Colors.white,
//                           onPressed: () {},
//                           child: Center(
//                             child: Text(
//                               'IN',
//                               style: TextStyle(
//                                   fontSize:  20,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
//
