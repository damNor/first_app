import 'package:first_app/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  goToMain() async{
    await Future.delayed(Duration(seconds: 10));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
  }
  @override
  void initState() {
    goToMain();
    super.initState();
  }
  Widget build(BuildContext context){
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                ),
                child: Icon(Icons.android),
              ),
              SizedBox(height: 15),
              Text("Aplikasi ku"),
              SizedBox(height: 30),
              CircularProgressIndicator(),
            ],
          ),
        )
    );
  }
}

