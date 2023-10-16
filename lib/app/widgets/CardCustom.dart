import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  const CardCustom({super.key, required this.title, required this.time, required this.img});
  final title;
  final time;
  final img;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        height: 70,
        width: double.infinity,
        padding: const EdgeInsets.only(right: 10, left: 10),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  time,
                  style: const TextStyle(color: Colors.black38),
                ),
              ],
            ),
            Image(image: AssetImage(img)),
          ],
        ),
      ),
    );
  }
}
