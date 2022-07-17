import 'package:first_flutter_app/pages/Notification.dart';
import 'package:first_flutter_app/pages/home_dart.dart';
import 'package:flutter/material.dart';
import '../Constants.dart';
import 'otp_page.dart';

class Appointments extends StatefulWidget {
  const Appointments({Key? key}) : super(key: key);

  @override
  _AppointmentsPageState createState() => _AppointmentsPageState();
}

class _AppointmentsPageState extends State<Appointments> {
  double topContainer = 0;

  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = FOOD_DATA;
    List<Widget> listItems = [];
    for (var post in responseList) {
      listItems.add(Container(

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
                          post["date"],
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
            post["time"],
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
                          post["mode"],
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

                            post["confimation"],
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
      );
    }
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
  }

  @override
  Widget build(BuildContext context) {
      double width = MediaQuery.of(context).size.width; //TODO: MEDIAQUERY IN FLUTTER
      double height = MediaQuery.of(context).size.height;
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       //backgroundColor: Colors.white,


        /*appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person, color: Colors.black),
              onPressed: () {},
            )
          ],
        ),*/

       /* body : Container(
          height: height,
          width: width,
          margin: EdgeInsets.fromLTRB(5.0, 40.0, 5.0, 10.0),
          child: Column(
            children: <Widget>[*/
              /*Row(

              children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                },
                child: Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset("assets/images/backButton.png",
                      width: 80,
                      height: 80,
                    ),
                  ),
                ),
              ),
                Padding(
                  padding: EdgeInsets.fromLTRB(45.0, 0.0, 50.0, 0.0),
                    child: Center(
                   child : Text('Appointments',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18.0,
                            color: Color(0XFF333333),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700)),
                    ),
                ),
              ]
              ),*/
       home: DefaultTabController(
         length: 2,
         child: Scaffold(
           backgroundColor: Colors.white,
           appBar: PreferredSize(
             preferredSize: Size(width, 130),
         child : Padding(
         padding: const EdgeInsets.fromLTRB(10.0, 10, 10.0, 0.0),
         child: AppBar(
              elevation: 0,
             backgroundColor: Colors.white,

             title:Container(
               height: height,
               width: width,
               padding : const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 40.0),
              child :Row(

                 children: <Widget>[
                 GestureDetector(
                 onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (context)=> Notificationpg()));
           },
             child: Image.asset("assets/images/backButton.png",
               width: 80,
               height: 80,
             ),
           ),
           const Padding(
       padding: EdgeInsets.fromLTRB(30.0, 0.0, 50.0, 0.0),
             child: Center(
               child : Text('Appointments',
                   textAlign: TextAlign.center,
                   style: TextStyle(fontSize: 18.0,
                       color: Color(0XFF333333),
                       fontFamily: "Poppins",
                       fontWeight: FontWeight.w700)),
             ),
           ),
           ]),
         ),
              bottom :  TabBar(
                  //labelPadding : EdgeInsets.only(left: 10,),
               indicator: BoxDecoration(
                   borderRadius: BorderRadius.circular(10), // Creates border
                   color: const Color(0xff2F93EC)),
               tabs: const [
                 Tab(
                     child: Align(
                       alignment: Alignment.center,
                       child: Text("Upcoming",
                         style: TextStyle(fontSize: 14,fontFamily: "Poppins",color: Colors.white),
                       ),
                     ),
                 ),
                 Tab(
                   child: Align(
                   alignment: Alignment.center,
                   child: Text("Completed",
                     style: TextStyle(fontSize: 14,fontFamily: "Poppins",color: Color(0xff828282)),
                   ),
                 ),
                 ),
               ],
             ),
              ),
           ),
           ),
           body: TabBarView(
             children: [
               Container(
                 margin: const EdgeInsets.only(top: 30.0),
               child : Expanded(
                 child: ListView.builder(
                     itemCount: itemsData.length,
                     physics: const BouncingScrollPhysics(),
                     itemBuilder: (context, index) {
                       return itemsData[index];
                     }
                 ),
               ),
               ),
               OtpPage(text: "second")
             ],
           ),
           bottomNavigationBar: Container(
             height: 59,
             margin: EdgeInsets.only(left: 23,right: 23,bottom: 20),
             width: double.infinity,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(18),
               color: Colors.blueAccent,
             ),
             child: Expanded(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Align(
                     alignment: Alignment.topLeft,
                     child: SizedBox.fromSize(
                       size: Size(70, 70),
                       child: ClipOval(
                         child: Material(
                           color: Colors.blueAccent,
                           child: InkWell(
                             //splashColor: Colors.amberAccent,
                             onTap: () {},
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: <Widget>[
                                 Icon(Icons.home_outlined,color: Colors.white,), // <-- Icon
                                 Text("Services",style: TextStyle(fontFamily: 'Poppins',fontSize: 12,color: Colors.white.withOpacity(0.8),fontWeight: FontWeight.bold),), // <-- Text
                               ],
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 40,top: 20),
                     child: Text('Videos',style: TextStyle(fontFamily: 'Poppins',fontSize: 13,color: Colors.white.withOpacity(0.8),fontWeight: FontWeight.bold),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 40),
                     child: SizedBox.fromSize(
                       size: Size(63, 54),
                       child: ClipOval(
                         child: Material(
                           color: Colors.blueAccent,
                           child: InkWell(
                             splashColor: Colors.amberAccent,
                             onTap: () {},
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: <Widget>[
                                 Icon(Icons.medical_services_outlined,color: Colors.white,size: 20,), // <-- Icon
                                 Text("Products",style: TextStyle(fontFamily: 'Poppins',fontSize: 12,color: Colors.white.withOpacity(0.8),fontWeight: FontWeight.bold),), // <-- Text
                               ],
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
             ),

           ),
           floatingActionButton: Padding(
             padding: const EdgeInsets.only(bottom: 5),
             child: SizedBox(

               child: Container(
                 child: FloatingActionButton(
                   elevation: 10,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(12),

                   ),
                   backgroundColor: Colors.indigoAccent,
                   onPressed: (){
                   },
                   child: Icon(Icons.play_arrow_outlined,color: Colors.white,size: 40,),
                 ),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12),
                   border: Border.all(width: 2.0,color: Colors.white),
                 ),
               ),
             ),
           ),
           floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
         ),
       ),
     );
     /*);

              *//*SizedBox(
                height: 10,
              ),*//*

              *//*Expanded(
                  child: ListView.builder(
                      itemCount: itemsData.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return itemsData[index];
                      }
                      ),
              ),*//*
            ],
          ),
        ),
    );
*/
  }
  Widget buildHeader({
    required Widget child,
  }) =>
      Column(
        children: [
          const SizedBox(height: 16),
          child,
        ],
      );
}
