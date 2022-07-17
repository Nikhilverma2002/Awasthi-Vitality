import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  _PaymentsPageState createState() => _PaymentsPageState();
}


class _PaymentsPageState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF8F8F9),

        appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 90,
        elevation: 0,
        leadingWidth: 3,
        backgroundColor: Color(0xffF8F8F9),
        title: Row(
        children: [
        Align(
        alignment: Alignment.topLeft,
        //child: GestureDetector(
        child: Container(
        height: 40,
        width: 40,
        /*margin: EdgeInsets.only(left: 0),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    border: Border.all(width: 2.0,color: Colors.white),
    color: Colors.grey[200],
    ),
    child: Stack(
    children : <Widget>[*/
      child : GestureDetector(
        onTap: () {
          //Navigator.push(context, MaterialPageRoute(builder: (context)=> Notificationpg()));
        },
        child: SvgPicture.asset("assets/images/back.svg",
          width: 150,
          height: 150,
        ),
    ),
    ),
        ),


    Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Text('Book Schedule',
              style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              color: Colors.black87,
              ),
              ),
              ),
              ],
              ),
    ),
      body: Container(
        margin : EdgeInsets.fromLTRB(10, 10, 10, 10),

        child: Column(
          children : <Widget>[

          Text('Please pay the online booking amount',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            color: Color(0xff333333),
          ),
        ),
            Container(

                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(20.0)), color: Colors.white, boxShadow: [
                  BoxShadow(color: Colors.black.withAlpha(30), blurRadius: 10.0),
                ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                  /*child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[*/
                  child : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/calendar.png",
                            height: 25,
                            width: 25,
                          ),
                          const SizedBox(width: 12,),
                          Text(
                            "date",
                            style: const TextStyle(fontSize: 14,
                                color : Color(0xff000000),
                                fontFamily: "Poppins", fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(width :50.0),

                          Image.asset(
                            "assets/images/clock.png",
                            height: 25,
                            width: 25,
                          ),
                          const SizedBox(width: 12,),
                          Text(
                            "time",
                            style: const TextStyle(fontSize: 14,
                                color : Color(0xff000000),
                                fontFamily: "Poppins",fontWeight: FontWeight.w500 ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 15,),

                      Row(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/video.png",
                              height: 25,
                              width: 25,
                            ),
                            const SizedBox(width: 12,),
                            Text(
                              "mode",
                              style: const TextStyle(fontSize: 14,
                                  color : Color(0xff000000),
                                  fontFamily: "Poppins",fontWeight: FontWeight.w500),
                            ),
                          ]),

                      const SizedBox(height: 15,),
                      const Divider(
                        color: Color(0xffE0E0E0), //color of divider
                        height: 5, //height spacing of divider
                        thickness: 1,
                        //thickness of divier line
                        indent: 10, //spacing at the start of divider
                        endIndent: 10, //spacing at the end of divider
                      ),
                      const SizedBox(height: 15.0,),

                      Row(
                          children: <Widget>[
                            Image.asset(
                              "assets/images/Ellipse.png",
                              height: 13,
                              width: 13,
                            ),
                            const SizedBox(width: 12,),
                            Text(

                              "confirmation",
                              style: const TextStyle(fontSize: 14,
                                  color : Color(0xff000000),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500),
                            ),
                          ]),
                      const SizedBox(height: 13,),


                      Container(
                        width: 250,
                        margin : const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child : OutlinedButton(
                          style: OutlinedButton.styleFrom(

                            side: const BorderSide(color: Color(0xffEB5757), width: 1),
                          ),
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child : Text(
                              "Cancel",
                              style: TextStyle(color: Color(0xffEB5757),
                                fontFamily: "Poppins",fontSize: 15,fontWeight:  FontWeight.w500,),
                            ),
                          ),
                        ),
                      ),
                      /*Text(
                      post["name"],
                      style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      post["brand"],
                      style: const TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$ ${post["price"]}",
                      style: const TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold),
                    )*/
                    ],
                  ),
                  /*Image.asset(
                  "assets/images/${post["image"]}",
                  height: 100,
                )*/
                  /*  ],
            ),*/
                )
            )
          ]),
      ),

    );
  }
}