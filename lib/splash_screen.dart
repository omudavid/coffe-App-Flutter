import 'package:coffee_app/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("./images/bg.png"),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "./images/espresso.png",
                fit: BoxFit.fill,
                height: 100,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 150,
                child: Divider(
                  height: 1.0,
                  thickness: 3.0,
                  color: Color(0xFF2D140D),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "COFFEE",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "HUB",
                    style: TextStyle(fontSize: 20, color: Color(0xFFB98875)),
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

class NewSplash extends StatefulWidget {
  @override
  _NewSplashState createState() => _NewSplashState();
}

class _NewSplashState extends State<NewSplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 3000), () {
      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("./images/bg.png"),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "./images/espresso.png",
                fit: BoxFit.fill,
                height: 100,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 150,
                child: Divider(
                  height: 1.0,
                  thickness: 3.0,
                  color: Color(0xFF2D140D),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "COFFEE",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "HUB",
                    style: TextStyle(fontSize: 20, color: Color(0xFFB98875)),
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
