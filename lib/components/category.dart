import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30, bottom: 15),
          child: Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 130,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF00512D),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Cappuccino",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 130,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Cold Brew",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 130,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Espresso",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CategorySection(
                price: 17.000,
                title: "Cappuccino",
                subtitle: "With Vanilla",
              ),
              CategorySection(
                price: 14.000,
                title: "Americano",
                subtitle: "-",
              ),
              CategorySection(
                price: 16.000,
                title: "Mochacinno",
                subtitle: "With Whipcream",
              ),
              CategorySection(
                price: 19.000,
                title: "Robusta",
                subtitle: "-",
              ),
              CategorySection(
                price: 15.000,
                title: "Arabica",
                subtitle: "-",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CategorySection extends StatelessWidget {
  const CategorySection({
    Key? key,
    required this.title,
    required this.price,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final double price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "detail-category");
      },
      child: Container(
        margin: EdgeInsets.only(top: 20, right: 20),
        height: MediaQuery.of(context).size.height / 3.1,
        width: MediaQuery.of(context).size.width / 2.3,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 130,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Rp."),
                      Text(
                        price.toStringAsFixed(3),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xFF00512D),
                    foregroundColor: Colors.white,
                    child: IconButton(
                      splashColor: Colors.transparent,
                      onPressed: () {},
                      icon: Icon(Icons.add),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
