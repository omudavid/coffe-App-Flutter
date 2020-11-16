import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF4EE),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.menu),
                    Icon(
                      Icons.search,
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: <Widget>[
                          Text(
                            "It's Great",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Day for",
                            style: TextStyle(
                                color: Color(0xFFB98875), fontSize: 30),
                          )
                        ],
                      ),
                      Text(
                        "Coffee.",
                        style:
                            TextStyle(color: Color(0xFFB98875), fontSize: 30),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                    child: Column(
                  children: <Widget>[
                    ListItem(
                      imageString: "espresso",
                      coffeeName: "Espresso",
                    ),
                    ListItem(
                      imageString: "cappuccino",
                      coffeeName: "Cappuccino",
                    ),
                    ListItem(
                      imageString: "macciato",
                      coffeeName: "macciato",
                    ),
                    ListItem(
                      imageString: "mocha",
                      coffeeName: "Mocha",
                    ),
                    ListItem(
                      imageString: "latte",
                      coffeeName: "Latte",
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String imageString;
  final String coffeeName;

  ListItem({this.coffeeName, this.imageString});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          print("$coffeeName was tapped");
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return OrderPage(
              coffeeName: coffeeName,
            );
          }));
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: <Widget>[
                    Image.asset("./images/$imageString.png"),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      coffeeName,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 70,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFFB98875),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
