import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taxi_app/src/resources/login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xff3277D8)),
        elevation: 0,
      ),

      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              SizedBox(height: 140),
              Image.asset("ic_car_red.png"),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 6),
                child: Text(
                  "Welcome Aboard!",
                  style: TextStyle(fontSize: 22, color: Color(0xff333333))
                ),
              ),

              Text(
                "Sign up with iCab in simple steps",
                style: TextStyle(fontSize: 16, color: Color(0xff606470)),
              ),
              
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 145, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Name",
                    prefixIcon: Container(width:50, child: Image.asset("ic_person.png")),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffCED0D2), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6))
                    )
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    prefixIcon: Container(width: 50, child: Image.asset("ic_phone.png")),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffCED0D2), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6))
                    )
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Container(width: 50, child: Image.asset("ic_mail.png")),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffCED0D2), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6))
                    )
                  ),
                ),
              ),

              TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Container(width: 50, child: Image.asset("ic_lock.png")),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffCED0D2), width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(6))
                  )
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: RaisedButton(
                    onPressed: () {}, //TODO: event sign up
                    child: Text(
                      "Sign up",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    color: Color(0xff3277D8),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6))),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: RichText(
                  text: TextSpan(
                    text: "Already a user?",
                    style: TextStyle(fontSize: 16, color: Color(0xff606470)),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () { Navigator.pop(context); },
                        text: " Login now",
                        style: TextStyle(fontSize: 16, color: Color(0xff3277D8))
                      ),
                    ],
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