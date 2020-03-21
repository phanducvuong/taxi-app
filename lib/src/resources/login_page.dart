import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taxi_app/src/resources/register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              SizedBox(height: 140),

              Image.asset("ic_car_green.png"),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 6),
                child: Text(
                  "Welcome back!",
                  style: TextStyle(fontSize: 22, color: Color(0xff333333))
                ),
              ),

              Text(
                "Login to continue using iCab",
                style: TextStyle(fontSize: 16, color: Color(0xff606470)),
              ),
              
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 145, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Container(width:50, child: Image.asset("ic_mail.png")),
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
                  prefixIcon: Container(width: 50, child: Image.asset("ic_phone.png")),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffCED0D2), width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(6))
                  )
                ),
              ),

              Container(
                constraints: BoxConstraints.loose(Size(double.infinity, 50)),
                alignment: AlignmentDirectional.centerEnd,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                      "Forgot password?",
                      style: TextStyle(fontSize: 16, color: Color(0xff606470)),
                    )
                  ),
                ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
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
                    text: "New User?",
                    style: TextStyle(fontSize: 16, color: Color(0xff606470)),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RegisterPage()));
                          },
                        text: " Sign up for a new account",
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
