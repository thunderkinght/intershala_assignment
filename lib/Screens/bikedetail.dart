import 'package:flutter/material.dart';
import 'package:intershala_assignment/Widgets/category.dart';
import 'package:intershala_assignment/Widgets/item_widget.dart';
import 'checkout.dart';

class BikeDetail extends StatefulWidget {
  const BikeDetail({super.key});

  @override
  State<BikeDetail> createState() => _BikeDetailState();
}

class _BikeDetailState extends State<BikeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Bike Details",
          style: TextStyle(color: Colors.black),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Indian"),
                    Text(
                      "Scout Bobber",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Category(
                      name: "Category",
                      value: "Cruiser",
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Category(name: "Displacement", value: "113cc"),
                    SizedBox(
                      height: 30,
                    ),
                    Category(name: "Max Speed", value: "124km/h"),
                  ],
                ),
                Column(
                  children: [
                    Image(
                      image: AssetImage("images/honda.jpg"),
                      height: 200,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CheckOut(),
                                ));
                          });
                        },
                        child: Text(
                          "Rent",
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Add ",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "items",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Item_widgets(
              name: "Riding Jacket",
              price: 800,
              img: "pic",
              button: "1",
            ),
            Item_widgets(
              name: "Riding Gloves",
              price: 800,
              img: "pic",
              button: "Add",
            ),
            Item_widgets(
              name: "Helmet",
              price: 800,
              img: "pic",
              button: "Add",
            ),
          ],
        ),
      ),
    );
  }
}
