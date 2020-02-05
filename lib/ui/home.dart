import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:cscdav/utils/firebase_auth.dart';
class HomePage extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Text('Dashboard', style: GoogleFonts.zhiMangXing(
              fontSize: 50,
              fontWeight: FontWeight.w400
            ) ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Dinesh Bag",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 27,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "CSC279",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.black87,
                                fontSize: 19,
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    child: InkWell(
                      onTap: (){},
                      borderRadius: BorderRadius.circular(30),
                       child: CircleAvatar(
                      backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/4/48/Outdoors-man-portrait_%28cropped%29.jpg'),
                      radius: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            GDashboard()
          ],
        ),
      ),
    );
  }
}

class GDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      
      child: GridView.count(
        childAspectRatio: 1.5,
        padding: EdgeInsets.only(left: 16, right: 16),
        crossAxisCount: 2,        
        crossAxisSpacing: 18,
        mainAxisSpacing: 30,
        children: <Widget>[         
          FlatButton(
            padding: EdgeInsets.only(top: 20),
            color: Colors.black,
            onPressed: () {},
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.today,
                  size: 60.0,
                  color: Colors.white,
                ),
                Text('Attendance', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),)
              ],
            ),
          ),
          FlatButton(
            padding: EdgeInsets.only(top: 20),
            color: Colors.black,
            onPressed: () {},
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.notifications,
                  size: 60.0,
                  color: Colors.white,
                ),
                Text('Notification', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),)
              ],
            ),
          ),
          FlatButton(
            padding: EdgeInsets.only(top: 20),
            color: Colors.black,
            onPressed: () {},
            child: Column(              
              children: <Widget>[
                Icon(
                  Icons.trending_up,
                  size: 60.0,
                  color: Colors.white,
                ),
                Text('Progress', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),)
              ],
            ),
          ),
          FlatButton(
            
            padding: EdgeInsets.only(top: 20),
            color: Colors.black,
            onPressed: () {},
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.note_add,
                  size: 60.0,
                  color: Colors.white,
                ),
                Text('Note', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),)
              ],
            ),
          ),
        ],
      ),
    );
  }
  // @override
  // Widget build(BuildContext context){
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Home Page'),
  //     ),
  //     body: SingleChildScrollView(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: <Widget>[
  //           Text("Home page"),
  //           RaisedButton(
  //             child: Text("Log out"),
  //             onPressed: (){
  //               AuthProvider().logOut();
  //             },
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }
}