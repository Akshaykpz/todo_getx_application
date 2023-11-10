import 'package:flutter/material.dart';

class taskview extends StatelessWidget {
  final String text;
  final String des, time;
  final Function press;
  final String size;
  const taskview(
      {super.key,
      required this.text,
      required this.des,
      required this.time,
      required this.size,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
              height: 90,
              width: 390,
              child: Card(
                color: Colors.black38,
                child: Row(children: [
                  Text(text),
                  IconButton(
                      onPressed: () {
                        press();
                      },
                      icon: Icon(Icons.delete))
                ]),
              ))
        ],
      ),
    );
  }
}
