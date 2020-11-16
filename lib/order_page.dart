import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const inactive = Colors.transparent;
const active = Color(0xFFCF9775);

class OrderPage extends StatefulWidget {
  final String coffeeName;

  OrderPage({this.coffeeName});

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int count = 1;
  int size = 300;
  int price = 300;
  Color small = active;
  Color medium = inactive;
  Color large = inactive;

  Color noCube = active;
  Color oneCube = inactive;
  Color twoCubes = inactive;
  Color threeCubes = inactive;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                    image: AssetImage(
                      "./images/bg.png",
                    ),
                    fit: BoxFit.cover),
              ),
              child: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                        child: Row(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_ios),
                            ),
                            Text(
                              widget.coffeeName,
                              style: TextStyle(fontSize: 30),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Image.asset(
                        "./images/${widget.coffeeName.toLowerCase()}.png",
                        fit: BoxFit.fill,
                        height: 100,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: <Widget>[
                              Text(
                                "Latte",
                                style: TextStyle(fontSize: 20),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 0),
                                    child: Text(
                                      "\$",
                                      style: TextStyle(
                                        color: Color(0xFFCF9775),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    price.toString(),
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Color(0xFFCF9775),
                                    ),
                                  )
                                ],
                              )
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFCF9775),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      topRight: Radius.circular(0),
                                      bottomRight: Radius.circular(0)),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    if (count > 1) {
                                      setState(() {
                                        count--;
                                        price = size * count;
                                      });
                                    }
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(count.toString()),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFCF9775),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(0),
                                      bottomLeft: Radius.circular(0),
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      count++;
                                      price = size * count;
                                    });
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(
                                      FontAwesomeIcons.plus,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Size",
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                ReusableCard(
                                  colour: small,
                                  cardChild: Image.asset(
                                    "./images/size.png",
                                    fit: BoxFit.fill,
                                    height: 40,
                                  ),
                                  onPress: () {
                                    setState(() {
                                      small = active;
                                      medium = inactive;
                                      large = inactive;
                                      size = 300;
                                      price = size * count;
                                    });
                                  },
                                ),
                                ReusableCard(
                                  colour: medium,
                                  cardChild: Image.asset(
                                    "./images/size.png",
                                    fit: BoxFit.fill,
                                    height: 50,
                                  ),
                                  onPress: () {
                                    setState(() {
                                      small = inactive;
                                      medium = active;
                                      large = inactive;
                                      size = 350;
                                      price = size * count;
                                    });
                                  },
                                ),
                                ReusableCard(
                                  colour: large,
                                  cardChild: Image.asset(
                                    "./images/size.png",
                                    fit: BoxFit.fill,
                                    height: 60,
                                  ),
                                  onPress: () {
                                    setState(() {
                                      small = inactive;
                                      medium = inactive;
                                      large = active;
                                      size = 400;
                                      price = size * count;
                                    });
                                  },
                                ),
                              ],
                              crossAxisAlignment: CrossAxisAlignment.end,
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sugar (in cubes)",
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: <Widget>[
                                  ReusableCard(
                                    colour: noCube,
                                    cardChild: Image.asset(
                                      "./images/no_cube.png",
                                    ),
                                    onPress: () {
                                      setState(() {
                                        noCube = active;
                                        oneCube = inactive;
                                        twoCubes = inactive;
                                        threeCubes = inactive;
                                      });
                                    },
                                  ),
                                  ReusableCard(
                                    colour: oneCube,
                                    cardChild: Image.asset("./images/cube.png"),
                                    onPress: () {
                                      setState(() {
                                        noCube = inactive;
                                        oneCube = active;
                                        twoCubes = inactive;
                                        threeCubes = inactive;
                                      });
                                    },
                                  ),
                                  ReusableCard(
                                    colour: twoCubes,
                                    cardChild: Row(
                                      children: <Widget>[
                                        Image.asset(
                                          "./images/cube.png",
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Image.asset(
                                          "./images/cube.png",
                                        ),
                                      ],
                                    ),
                                    onPress: () {
                                      setState(() {
                                        noCube = inactive;
                                        oneCube = inactive;
                                        twoCubes = active;
                                        threeCubes = inactive;
                                      });
                                    },
                                  ),
                                  ReusableCard(
                                    colour: threeCubes,
                                    cardChild: Column(
                                      children: [
                                        Image.asset("images/cube.png"),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Image.asset(
                                              "./images/cube.png",
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Image.asset(
                                              "./images/cube.png",
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    onPress: () {
                                      setState(() {
                                        noCube = inactive;
                                        oneCube = inactive;
                                        twoCubes = inactive;
                                        threeCubes = active;
                                      });
                                    },
                                  ),
                                ],
                                crossAxisAlignment: CrossAxisAlignment.end,
                              )
                            ],
                          ),
                        )),
                    FlatButton(
                      onPressed: () {},
                      child: Text("Buy"),
                      color: active,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: cardChild,
          ),
        ),
      ),
    );
  }
}
