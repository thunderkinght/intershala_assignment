import 'package:flutter/material.dart';

class Item_widgets extends StatelessWidget {
  const Item_widgets({
    super.key,
    required this.name,
    required this.price,
    required this.img,
    required this.button,
  });

  final String name;
  final int price;
  final String img;
  final String button;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            /*Image(
              image: AssetImage(img),
              width: 50,
              height: 50,
            ),*/ //TODO: Add a pic
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    Text(
                      "$price",
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
              child: Text("$button"),
              style: ButtonStyle(),
            )
          ],
        ),
      ),
    );
  }
}
