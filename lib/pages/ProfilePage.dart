import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class ProfilePage extends StatefulWidget {
 
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  
  @override
  Widget build(BuildContext context) {
  final user = FirebaseAuth.instance.currentUser;
  
     return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 140,
              ),
              Image.asset('assets/images/logo1.png'),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 6),
                child: Text(
                  'Welcome Back!',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
              Text(
                'Login to continue using REVIEW PHIM app',
                style: TextStyle(fontSize: 16, color: Colors.white54),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 80, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                    prefixIcon: Container(
                      width: 50,
                      child: Image.asset(
                        'assets/images/ic_mail.png',
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white54,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                  ),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 18, color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                  prefixIcon: Container(
                    width: 50,
                    child: Image.asset('assets/images/ic_lock.png'),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    borderSide: BorderSide(
                      color: Colors.white54,
                      width: 1,
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    'Forgot password',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white54,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                child: SizedBox(
                  width: 100,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () async {
                     
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(color: Colors.white54, fontSize: 18),
                    ),
                   
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New user?',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white54,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Text(
                        ' Sign up for a new account',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
