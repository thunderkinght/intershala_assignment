import 'package:flutter/material.dart';
import 'package:intershala_assignment/Screens/bikedetail.dart';

class Popluar_Widget extends StatelessWidget {
  const Popluar_Widget({
    super.key,
    required this.name,
    required this.catorgary,
    required this.price,
    required this.pic,
    required this.bike,
  });

  final String name;
  final String catorgary;
  final int price;
  final String pic;
  final Function bike;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        /*setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => BikeDetail()),
          );
        });*/
        bike();
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(pic),
                height: 100,
                width: 100,
              ), //TODO: Add a pic
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
                ),
              ),
              Text(
                catorgary,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Row(
                children: [
                  Text(
                    "${price}/",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  Text("per day"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
