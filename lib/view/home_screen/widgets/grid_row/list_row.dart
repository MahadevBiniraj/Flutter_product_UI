import 'package:flutter/material.dart';

class Gridrow extends StatelessWidget {
  const Gridrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(
                    "https://static.vecteezy.com/system/resources/previews/012/843/767/large_2x/fresh-fruits-and-vegetables-on-grey-background-healthy-eating-concept-flat-lay-copy-space-photo.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "fruits",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
