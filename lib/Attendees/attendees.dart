import 'package:flutter/material.dart';
import 'package:student/Common_Widgets/SetImage.dart';
import 'package:student/constants.dart';

class Attendees extends StatefulWidget{
  @override
  _AttendeesState createState() => _AttendeesState();
}

class _AttendeesState extends State<Attendees> {
  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;
    return(Center(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical:20),
        children: <Widget>[
        ListItem(size: size),
        ListItem(size: size),
        ListItem(size: size),
        ListItem(size: size),
        ListItem(size: size),
        ListItem(size: size),
        ListItem(size: size),
        ListItem(size: size),
        ListItem(size: size),
        ListItem(size: size),
        ListItem(size: size),
        ListItem(size: size),
        ListItem(size: size),
        ListItem(size: size),
        ListItem(size: size),
        ],
      ),
    )
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: size.height*0.02,left: 10),
      margin: EdgeInsets.only(bottom: 18),
      width: size.width*0.94,
      child: Row(
        crossAxisAlignment:CrossAxisAlignment.center,
        children: [
          SetImage(size: size, path: 'assets/images/girl.jpg', width: 0.26, height: 0.27),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Student Name', style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width*0.27,
                      height: 40,
                      margin: EdgeInsets.only(right: size.width*0.08,top:size.height*0.04),
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        gradient: new LinearGradient(
                          colors: [kPrimaryColor, Colors.black],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: FlatButton(
                        child: new Text("Bonus", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                        onPressed: (){},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:size.height*0.04),
                      width: size.width*0.27,
                      height: 40,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        gradient: new LinearGradient(
                          colors: [kPrimaryColor, Colors.black],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                      ),
                      child: FlatButton(
                        child: new Text("Engaged", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                        onPressed: (){},
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 4,
            offset: Offset(0, 6), // changes position of shadow
          ),
        ],
      ),
    );
  }
}

