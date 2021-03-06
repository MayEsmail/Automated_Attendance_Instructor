import 'package:flutter/material.dart';
import 'Attendees/attendees.dart';
import 'constants.dart';
import './login/login.dart';
void main()=>runApp(MyApp());
class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIdx=0;
  bool isLoggedIn=true;
  Widget render(idx){
    return (idx==0)?Text('Home '):Attendees();
  }
  @override
  Widget build(BuildContext context) {
    return(MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(110),
          child: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/iti.png"),
                  fit: BoxFit.fill
                ), 
              ),
            ),
          ),
          ),
          body: isLoggedIn?render(_currentIdx):LoginScreen(),
          bottomNavigationBar:isLoggedIn?(BottomNavigationBar(
            currentIndex: _currentIdx,
            iconSize: 30,
            selectedItemColor: kPrimaryColor,
            selectedFontSize: 16,
            items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.grey[400],
              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('Attendees'),
              backgroundColor: Colors.grey[400],
            ),
          ],
          onTap: (index){
            setState(() {
              _currentIdx=index;
            });
          },
          )):null,
        ),
    )
    );
  } 
}

