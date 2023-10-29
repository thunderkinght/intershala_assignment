import 'package:flutter/material.dart';
import 'package:intershala_assignment/Widgets/section_widget.dart';
import 'package:intershala_assignment/Widgets/popluar_widget.dart';
import 'package:intershala_assignment/Widgets/item_widget.dart';
import 'bikedetail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void bike() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BikeDetail()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage("images/Ajinkya.jpg"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Welcome",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        "Ajinkya Mhatre",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        hintText: "Search Bikes",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Section_Widget(bike: "Adventure"),
                    SizedBox(
                      width: 10,
                    ),
                    Section_Widget(bike: "Cruiser"),
                    SizedBox(
                      width: 10,
                    ),
                    Section_Widget(bike: "Sports"),
                    SizedBox(
                      width: 10,
                    ),
                    Section_Widget(bike: "Tourist"),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  Text(
                    "Popular ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
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
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Popluar_Widget(
                      name: "Meteore",
                      catorgary: "Royal Enfield",
                      price: 699,
                      pic: "images/meteor-350-stellar-black-.jpg",
                      bike: bike,
                    ),
                    Popluar_Widget(
                      name: "Scout Bobber",
                      catorgary: "Indian",
                      price: 1499,
                      pic: "images/indian-scout-bobber.jpg",
                      bike: bike,
                    ),
                    Popluar_Widget(
                      name: "Rebel",
                      catorgary: "Honda",
                      price: 699,
                      pic: "images/rebel.jpeg",
                      bike: bike,
                    ),
                    Popluar_Widget(
                      name: "Meteore",
                      catorgary: "Royal Enfield",
                      price: 699,
                      pic: "images/meteor-350-stellar-black-.jpg",
                      bike: bike,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text(
                    "Recently ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "viewed",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Item_widgets(
                name: "Hayabusa",
                price: 2000,
                img: "images/rebel.jpeg",
                button: "Avaiable",
              ),
              Item_widgets(
                name: "Meteore",
                price: 699,
                img: "images/meteor-350-stellar-black-.jpg",
                button: "Avaiable",
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Recently_Widget extends StatelessWidget {
  const Recently_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text("pic"), //TODO: Add a pic
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hayabusa",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    Text(
                      "2000",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text("/per day")
                  ],
                ),
              ],
            ),
            Expanded(child: Container()),
            ElevatedButton(
              onPressed: () {},
              child: Text("Avaiable"),
              style: ButtonStyle(),
            )
          ],
        ),
      ),
    );
  }
}
