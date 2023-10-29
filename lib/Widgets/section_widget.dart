import 'package:flutter/material.dart';

class Section_Widget extends StatelessWidget {
  const Section_Widget({
    super.key,
    required this.bike,
  });

  final String bike;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "$bike Bike",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
