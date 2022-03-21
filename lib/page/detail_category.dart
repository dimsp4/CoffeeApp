import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CategoryDetail extends StatelessWidget {
  const CategoryDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      width: size.width,
                      height: double.infinity,
                      child: Image.asset(
                        "lib/assets/images/cappuccino.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, top: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: Colors.black,
                                  ),
                                  radius: 23,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: Colors.black,
                                ),
                                radius: 23,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text(
                              "Cappuccino",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                            Text(
                              "With Vanilla",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            width: size.width,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: size.width,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: ToggleSwitch(
                        minWidth: 110,
                        minHeight: 50,
                        cornerRadius: 20,
                        activeBgColor: [Color(0xFF00512D)],
                        inactiveBgColor: Colors.grey.withOpacity(0.3),
                        totalSwitches: 3,
                        labels: [
                          'Coffee',
                          'Chocolate',
                          'Ice',
                        ],
                      ),
                    ),
                    TitleText(
                      title: 'Coffee Size',
                      fontSize: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 110,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFF00512D),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              "Small",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 110,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              "Medium",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 110,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              "Large",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TitleText(
                      title: 'About',
                      fontSize: 22,
                    ),
                    Text(
                      "Es kappucino ini biji nya berasal dari Aceh yaitu lebih tepat nya di Gayo dan ini memiliki rasa yang khas dan bau yang wangi serta ditambahi carramel diatasnya.",
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "buy-now");
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            width: 110,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF00512D),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                "Add To Cart",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "buy-now");
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            width: 110,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Center(
                              child: Text(
                                "Buy Now",
                                style: TextStyle(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  TitleText({Key? key, required this.title, required this.fontSize})
      : super(key: key);

  String title;
  double fontSize = 22;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 15,
      ),
      child: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
      ),
    );
  }
}
