//import 'package:driving_test_scheduler/utilities/constants.dart';
import 'package:driving_test_ui/add_test_center.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  Payment() : super();

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Payment'),
          centerTitle: true,
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 16.0),
              CustomCard1(),
            ],
          ),
        ));
  }
}

class CustomCard1 extends StatelessWidget {
//  String th_test_no;
//  String driving_l_no;
//  CustomCard1(this.th_test_no,this.driving_l_no);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //color: Color(0xFFB5C8D2),
          borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(
                'Provide your card number to get pro features',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xFF0d6898),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30.0),
            Center(
              child: Container(
                alignment: Alignment.centerLeft,
                //decoration: kBoxDecorationStyle,
                height: 50.0,
                width: MediaQuery.of(context).size.width * 0.80,
                child: TextField(
                  //controller: licenceController,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Color(0xFF094869),
                    fontFamily: 'OpenSans',
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0),
                    prefixIcon: Icon(
                      Icons.credit_card,
                      color: Color(0xFF094869),
                    ),
                    hintText: 'Enter your card number',
                    //hintStyle: kHintTextStyle,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.0),

            SizedBox(height: 25.0),
            Center(
              child: Container(
                height: 35,
                width: MediaQuery.of(context).size.width * 0.60,
                child: RaisedButton(
                  elevation: 5.0,
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>AddTestCenter())),
                     // print('submit Button Pressed'),
                  padding: EdgeInsets.all(5.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Color(0xFFB5C8D2),
                  child: Text(
                    'Pay- €7.99',
                    style: TextStyle(
                      color: Color(0xFF094869),
                      letterSpacing: 1.5,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Text(
                'Premium Account Benefits',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xFF0d6898),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15.0),

            Container(
              width: MediaQuery.of(context).size.width * 0.96,
              //color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '✓ Push Notification service for new tests',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFF0d6898),
                          fontWeight: FontWeight.bold),
                      maxLines: 1,
                    ),
                    Text(
                      '✓ Up to 3 additional test centers',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFF0d6898),
                          fontWeight: FontWeight.bold),
                      maxLines: 1,
                    ),
                    Text(
                      '✓ free from ads',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFF0d6898),
                          fontWeight: FontWeight.bold),
                      maxLines: 1,
                    ),
                    Text(
                      '✓ Support for up to 5 devices',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFF0d6898),
                          fontWeight: FontWeight.bold),
                      maxLines: 1,
                    ),
                    Text(
                      '✓ Unlimited use nutill you pass',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xFF0d6898),
                          fontWeight: FontWeight.bold),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
