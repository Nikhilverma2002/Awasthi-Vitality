import 'package:first_flutter_app/pages/home_dart.dart';
import 'package:first_flutter_app/widgets/notifies.dart';
import 'package:flutter/material.dart';


class Notificationpg extends StatefulWidget {
  const Notificationpg({Key? key}) : super(key: key);

  @override
  _NotificationpgPageState createState() => _NotificationpgPageState();
}

class _NotificationpgPageState extends State<Notificationpg> {
  double topContainer = 0;

  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = NOTIFICATION_DATA;
    List<Widget> listItems = [];
    for (var notifies in responseList) {
      listItems.add(Container(

        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.black.withAlpha(30), blurRadius: 10.0),
            ]),
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 13, 15, 10),
                child : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/notification.png",
                          height: 65,
                          width: 65,
                        ),
                        /*const SizedBox(width: 6),*/
          Flexible(
                          child : Text(
                          notifies["text"],
                            textDirection: TextDirection.ltr,
                          //overflow: TextOverflow.ellipsis,
                          //maxLines: 5,
                          style: const TextStyle(fontSize: 14,
                              color: Color(0xff000000),
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500),
                        ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    const Divider(
                      color: Color(0xffE0E0E0), //color of divider
                      height: 5, //height spacing of divider
                      thickness: 1,
                      //thickness of divier line
                      indent: 20, //spacing at the start of divider
                      endIndent: 20, //spacing at the end of divider
                    ),
                    const SizedBox(height: 7,),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                //width: 250,
                margin : const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child : OutlinedButton(
                  style: OutlinedButton.styleFrom(

                    side: const BorderSide(color: Color(0xffBDBDBD), width: 1),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.zero,
                    child : Text(
                      "Cancel",
                      style: TextStyle(color: Color(0xffBDBDBD),
                          fontFamily: "Poppins",fontSize: 14,fontWeight:  FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Flexible(

                child: FlatButton(
                  onPressed: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (_)=> HomePage()),);
                  },
                  //color: Theme.of(context).primaryColor,
                  color: Color(0xFF27AE60),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Text("Ok",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),

              ]),
                  ]
                ),
        ),
      ),
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 25, 10, 0),

        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
        Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(0),
                child: Image.asset("assets/images/backButton.png",
                width: 80,
                height: 80,
              ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(45.0, 0.0, 50.0, 0.0),
                  child: Text('Notifications',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18.0,
                          color: Color(0XFF333333),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700)),
                ),
            ]),
              Expanded(
                child: ListView.builder(
                    itemCount: itemsData.length,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return itemsData[index];
                    }
                ),
              ),

      ]),


    ),
    );
  }
}
