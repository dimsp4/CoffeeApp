import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  "lib/assets/images/circleavatar.JPG",
                ),
                radius: 25,
              ),
              Row(
                children: [
                  Icon(
                    Icons.place,
                    color: Color(0xFF00512D),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Jakarta, ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Mampang"),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_outlined,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome, Dhimas!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFF00512D)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "It's time for coffee break",
                style: TextStyle(fontSize: 15, color: Color(0xFF00512D)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              size: 30,
              color: Color(0xFF00512D),
            ),
            suffixIcon: IconButton(
              padding: EdgeInsets.only(right: 20),
              icon: Icon(
                Icons.list,
                color: Color(0xFF00512D),
              ),
              onPressed: () {},
            ),
            filled: true,
            fillColor: Colors.grey.withOpacity(0.2),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15)),
            hintText: "Search Coffee..",
          ),
        ),
      ],
    );
  }
}
