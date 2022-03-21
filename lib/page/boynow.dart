import 'package:flutter/material.dart';
import 'package:job_busung/page/detail_category.dart';

class Buy extends StatelessWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        leadingWidth: 60,
        title: Text(
          "Shopping Cart",
          style: TextStyle(fontSize: 15),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(
                title: "Order Summary",
                fontSize: 22,
              ),
              OrderBox(),
              OrderBox(),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF2F9565)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    "Add More Items",
                    style: TextStyle(color: Color(0xFF2F9565), fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              TitleText(
                title: "Discount Coupon",
                fontSize: 18,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Color(0xFF2F9565))),
                          hintText: "Promo Code",
                        ),
                        textAlignVertical: TextAlignVertical.bottom,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF00512D),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "Apply",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Subtotal"),
                      Text(
                        "Rp.999",
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery fees"),
                      Text(
                        "Rp.999",
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total"),
                      Text(
                        "Rp.999",
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF00512D),
                ),
                child: Center(
                    child: Text(
                  "Checkout",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OrderBox extends StatelessWidget {
  const OrderBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 15),
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Row(
        children: [
          Container(
            width: 120,
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 220,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "1x Cappuccino",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Edit",
                      style: TextStyle(
                        color: Color(0xFF2F9565),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Rp.10.000"),
                    IconButton(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.bottomRight,
                      onPressed: () {},
                      icon: Icon(Icons.delete_outline),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
