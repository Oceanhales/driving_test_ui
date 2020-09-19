import 'package:driving_test_ui/default_available_test_times.dart';
import 'package:driving_test_ui/notifications.dart';
import 'package:driving_test_ui/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:driving_test_ui/custom_list_Tile.dart';

class DashBoardPage extends StatefulWidget {
  DashBoardPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            iconSize: 40,
            color: Colors.white,
            onPressed: () =>
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Notifications())),
          )
        ],
      ),

      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(
              0xFF0d6898), //This will change the drawer background to blue
        ),

        child: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName:
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Driving licence number",style: TextStyle(color: Colors.white),),
                    Text(
                      'Butle803120cg9jf',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.5,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                  ],
                ),
                accountEmail: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Theory Test Number",style: TextStyle(color: Colors.white),),
                    Text(
                      '44758408',
                      style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.5,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                      ),
                    ),
                  ],
                ),

              ),
              SizedBox(height: 20.0),
              CustomListTile(Icons.watch_later, 'Test Centers & Times', () =>{}
                  // Navigator.push(context, MaterialPageRoute(
                  //     builder: (context) => DefaultAvailableTestTimes())),
              ),
              //CustomListTile(Icons.notifications,'Notifications',()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SplashScreen())),),
              CustomListTile(Icons.settings, 'Add Test Center', () =>
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Settings())),
              ),

              CustomListTile(Icons.notifications, 'Notifications', () =>
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Notifications())),
              ),
              CustomListTile(Icons.lock, 'Logout', () =>{}
                // async{
                //   SharedPreferences prefs = await SharedPreferences.getInstance();
                //   prefs.remove('licence');
                //   Navigator.push(context, MaterialPageRoute(
                //       builder: (context) => LoginScreen()));
                // }
              ),

            ],
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Text('Driving Licence Number',style: TextStyle(fontSize: 16.0,color: Color(0xFF0d6898),fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(left : 10.0 ,top: 5.0),
              child: Text("Butle803120cg9jf",style: TextStyle(fontSize: 22.0,color: Colors.black87,fontWeight: FontWeight.bold,)),
            ),
            SizedBox(height: 15.0),
            Text('Theory Test Number',style: TextStyle(fontSize: 16.0,color: Color(0xFF0d6898),fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(left : 10.0 ,top: 5.0),
              child: Text("44758408",style: TextStyle(fontSize: 22.0,color: Colors.black87,fontWeight: FontWeight.bold,)),
            ),

            SizedBox(height: 40,),
            Text('Date And Time Of Test',style: TextStyle(fontSize: 16.0,color: Color(0xFF0d6898),fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(left : 10.0 ,top: 5.0),
              child: Text("Monday 9 November 2020 10:14 am",style: TextStyle(fontSize: 22.0,color: Colors.black87,fontWeight: FontWeight.bold,)),
            ),
            SizedBox(height: 15.0),
            Text('Last Date To Change or Cancel',style: TextStyle(fontSize: 16.0,color: Color(0xFF0d6898),fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(left : 10.0 ,top: 5.0),
              child: Text("Monday 9 November 2020 10:14 am",style: TextStyle(fontSize: 22.0,color: Colors.black87,fontWeight: FontWeight.bold,)),
            ),
            SizedBox(height: 15.0),
            Text('Test Center',style: TextStyle(fontSize: 16.0,color: Color(0xFF0d6898),fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(left : 10.0 ,top: 5.0),
              child: Text("Cardington",style: TextStyle(fontSize: 22.0,color: Colors.black87,fontWeight: FontWeight.bold,)),
            ),
            SizedBox(height: 15.0),
            Text('Type Of Test',style: TextStyle(fontSize: 16.0,color: Color(0xFF0d6898),fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(left : 10.0 ,top: 5.0),
              child: Text("Car",style: TextStyle(fontSize: 22.0,color: Colors.black87,fontWeight: FontWeight.bold,)),
            ),
            SizedBox(height: 15.0),
            Text('Fee',style: TextStyle(fontSize: 16.0,color: Color(0xFF0d6898),fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(left : 10.0 ,top: 5.0),
              child: Text("£62.00",style: TextStyle(fontSize: 22.0,color: Colors.black87,fontWeight: FontWeight.bold,)),
            ),
            SizedBox(height: 15.0),
            Text('Test Status',style: TextStyle(fontSize: 16.0,color: Color(0xFF0d6898),fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(left : 10.0 ,top: 5.0),
              child: Text("Booked",style: TextStyle(fontSize: 22.0,color: Colors.black87,fontWeight: FontWeight.bold,)),
            ),


          ],
        ),
      ),
    );
  }
}
