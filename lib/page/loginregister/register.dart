import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCF9F69),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: Image.asset(
                  "lib/assets/images/cofeeder_icon.png",
                  width: 230,
                  height: 130,
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 20, bottom: 5, left: 5),
                  child: Text(
                    "CREATE YOUR ACCOUNT",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(0.5)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: "Username",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(0.5)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: "Email",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide:
                            BorderSide(color: Colors.black.withOpacity(0.5)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: "Password",
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 135, vertical: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      primary: Color(0xFF00512D),
                    ),
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 18, color: Color(0xFFC1C1C1)),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "home");
                    },
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "login");
                    },
                    child: Text(
                      "Joined before?",
                      style: TextStyle(color: Color(0xFF00512D)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Divider(
                    thickness: 1,
                  ),
                  Text(
                    "Or",
                    style: TextStyle(color: Colors.black.withOpacity(0.5)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFF00512D),
                    foregroundColor: Color(0xFFC1C1C1),
                    child: FaIcon(FontAwesomeIcons.google),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFF00512D),
                    foregroundColor: Color(0xFFC1C1C1),
                    child: FaIcon(FontAwesomeIcons.facebook),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
