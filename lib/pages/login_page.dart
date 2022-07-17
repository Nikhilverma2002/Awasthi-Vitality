import 'package:first_flutter_app/pages/home_dart.dart';
import 'package:first_flutter_app/pages/landing_page.dart';
import 'package:first_flutter_app/pages/otp_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
class LoginPage extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<LoginPage> {
  String currentText = "";
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
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
              onTap: (){
                LandingPage();
        },
                child : Container(
                  padding: EdgeInsets.fromLTRB(15.0,50.0,0.0,0.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SvgPicture.asset("assets/images/back.svg"),
                ),
              ),
              ),
              SizedBox(height: 30.0),
              Container(

                margin: EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0),
                child: Image.asset('assets/images/img.png',fit: BoxFit.fill,),
              ),
              SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('OTP Verification',style: TextStyle(fontSize: 18.0,
                        color: Color(0XFF333333), fontFamily: "Poppins", fontWeight: FontWeight.w700)),
                  ],
                ),
              ),

            Container(
              margin: EdgeInsets.fromLTRB(28.0, 18.0, 28.0, 0.0),
              child : GestureDetector(
                child: RichText(
                  textAlign: TextAlign.center,
                  text : TextSpan(
                      text: 'We will send you an ',
                      style: TextStyle(fontSize: 14.0,
                          color: Color(0xff858585),fontWeight: FontWeight.w400, fontFamily: "Poppins"
                      ),
                      children: [
                        TextSpan(
                          text: 'One Time Password',
                          style: TextStyle(fontSize: 14.0,
                              color: Color(0xff4E4E4E),fontWeight: FontWeight.w500, fontFamily: "Poppins"
                          ),
                        ),
                  TextSpan(
                      text: ' on this mobile number',
                      style: TextStyle(fontSize: 14.0,
                          color: Color(0xff858585), fontWeight: FontWeight.w400, fontFamily: "Poppins"
                      ),
                  ),
                      ] 
                  ),
                ),
            ),
            ),
              SizedBox(height: 30.0),
              Container(
                //padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                  child: TextField(
                    maxLength: 10,
                    maxLengthEnforcement:  MaxLengthEnforcement.enforced,
                    keyboardType: TextInputType.number,
                    onChanged: (text) => setState(() {
                      currentText = text;
                    }),
                decoration: InputDecoration(

                  labelText: '\t\tMobile Number',
                  labelStyle: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w300 , fontSize: 16.0, color: Color(0xff757575)),
                  alignLabelWithHint: true,
                  hintStyle: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w300 , fontSize: 16.0, color: Color(0xff757575)),
                  //hintStyle:
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    child: Image.asset("assets/images/flag.png",
                    height: 30,
                    width: 30,
                  ),
                  ),
                    border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
    ),
    ),
              ),
                  SizedBox(height: 20.0),
             /* TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),*/
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 20,right: 20),
                width: double.infinity,
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> OtpPage(text: currentText)),);
                  },
                  //color: Theme.of(context).primaryColor,
                  color: Color(0xFF3F51B5),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: const Text("Get OTP",
                    style: TextStyle(
                      letterSpacing: .5,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
              SizedBox(height:40.0),

              /*Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: FlatButton(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0XFFCACACA), width: 0.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    onPressed: () {  },
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: BoxDecoration(
                    image: DecorationImage(
                    image:
                    AssetImage("assets/images/google.png"),
                    fit: BoxFit.cover),
                    shape: BoxShape.circle,
                    ),
                    ),
                    SizedBox(
                    width: 20,
                    ),
                    Text("Continue With Google", style: TextStyle( fontWeight: FontWeight.w500, fontFamily: "Poppins", fontSize: 16.0),)
                    ],
                    ),
                  ),
                  ),*/
        Container(
          margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
          width: double.infinity ,

            child : OutlinedButton.icon(

            icon: Image.asset("assets/images/google.png",
              height: 40,
              width: 40,
            ),
            label: Padding(
              padding: EdgeInsets.fromLTRB(5.0, 18.0, 5.0, 18.0),
              child : Text("Continue with Google",
                textAlign : TextAlign.center,
                style: TextStyle(
                  color: Color(0xff828282),
                fontWeight: FontWeight.w500, fontFamily: "Poppins",
                fontSize: 16.0)

            ),
            ),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Color(0xffF3C973), width: 1),
                //backgroundColor: Colors.white
            ),
            onPressed: () {},
          ),
          ),
              SizedBox(height: 35.0),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: Text.rich(

                  TextSpan(
                      text: 'Don\'t have an account?',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: '\t Signup',
                          style: TextStyle(
                              color: Color(0xffEE7B23),
                          ),
                        ),
                      ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}