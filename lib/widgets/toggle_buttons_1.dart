import 'package:flutter/material.dart';

class ToggleButtons1 extends StatefulWidget {
  @override
  _ToggleButtons1State createState() => _ToggleButtons1State();
}

class _ToggleButtons1State extends State<ToggleButtons1> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.only(left: 10, right: 10),
    //width: double.infinity,
    color: Color(0xffE8E8ED),
    child: ToggleButtons(
      borderRadius:BorderRadius.circular(10),
      isSelected: isSelected,
      selectedColor: Colors.white,
      color: Color(0xff828282),
      fillColor: Color(0xff2F93EC),
      renderBorder: false,
      //splashColor: Colors.red,
      //highlightColor: Colors.orange,
      children: <Widget>[

        Padding(
          padding: const EdgeInsets.only(left: 40,right: 40),
          child: Text('Upcoming', style: TextStyle(fontSize: 13,fontFamily: "Poppins",
            letterSpacing: .4
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40,right: 40),
          child: Text('Completed', style: TextStyle(fontSize: 13,fontFamily: "Poppins",letterSpacing: .4)),
        ),
      ],
      onPressed: (int newIndex) {
        setState(() {
          for (int index = 0; index < isSelected.length; index++) {
            if (index == newIndex) {
              isSelected[index] = true;
            } else {
              isSelected[index] = false;
            }
          }
        });
      },
    ),
  );
}