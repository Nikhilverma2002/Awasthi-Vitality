import 'package:first_flutter_app/pages/Appointments.dart';
import 'package:first_flutter_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpPage extends StatefulWidget {

  final String text;
  OtpPage({required this.text});
  @override
  _OtpPageState createState() => _OtpPageState();
}

  class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width; //TODO: MEDIAQUERY IN FLUTTER
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15.0, 50.0, 0.0, 0.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SvgPicture.asset("assets/images/back.svg"),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(

                  margin: EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0),
                  child: Image.asset(
                    'assets/images/img.png', fit: BoxFit.fill,),
                ),
                SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('OTP Verification', style: TextStyle(fontSize: 18.0,
                          color: Color(0XFF333333),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),

    Container(
            margin: EdgeInsets.fromLTRB(28.0, 20.0, 28.0, 0.0),
            child : GestureDetector(
            child: RichText(
            textAlign: TextAlign.center,
            text : TextSpan(
            text: 'Enter the OTP sent to ',
            style: TextStyle(fontSize: 14.0,letterSpacing: .3,
            color: Color(0xff858585),fontWeight: FontWeight.w400, fontFamily: "Poppins"
            ),
            children: [
            TextSpan(
            text: "+91 " + widget.text,
            style: TextStyle(fontSize: 14.0,
            color: Color(0xff4E4E4E),fontWeight: FontWeight.w500, fontFamily: "Poppins"
            ),
            ),
              ]
                ),
              ),
    ),
      ),
                SizedBox(height: 30.0),
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                  alignment: Alignment.center,
                    child :OtpTextField(
                      numberOfFields: 4,
                      borderColor: Color(0xFFB8B8B8),
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      borderWidth: 1.5,
                      borderRadius: 	BorderRadius.all(Radius.circular(6.0)),
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      fieldWidth: 60,
                      textStyle: TextStyle(
                        fontFamily: "Poppins",fontSize: 15.0,color: Colors.black,
                        fontWeight: FontWeight.w400
                      ),
                      //runs when every textfield is filled
                      /*onSubmit: (String verificationCode){
                        showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                title: Text("Verification Code"),
                                content: Text('Code entered is $verificationCode'),
                              );
                            }
                        );
                      },*/ // end onSubmit
                    ),
                ),
                SizedBox(height: 30.0),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 20,right: 20,top: 20),
                  width: double.infinity,
                  child: FlatButton(
                    child: Text("Verify & Proceed",
                      style: TextStyle(
                        letterSpacing: .5,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> Appointments()),);
                    },
                    //color: Theme.of(context).primaryColor,
                    color: Color(0xFF3F51B5),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                  ),
                ),
      ]),
    ),
    ),
    );
  }
}