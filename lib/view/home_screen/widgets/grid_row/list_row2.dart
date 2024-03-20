import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttergroupui/core/color_constants/colorconstants.dart';
import 'package:fluttergroupui/view/product_details/productdetails.dart';

class Row2 extends StatelessWidget {
  const Row2({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Productdetails(),
            ));
      },
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 230,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colorconstants.white,
            ),
            child: Column(
              children: [
                Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.grofers.com/app/images/products/sliding_image/111483a.jpg?ts=1679656154"),
                          fit: BoxFit.cover)),
                )
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 25,
            right: 10,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black),
              child: Icon(
                Icons.shopping_cart,
                color: colorconstants.white,
              ),
            )),
        Positioned(
            bottom: 17,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Redlabel Tea Leaf,",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Text(
                  "1kg",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Text(
                      "\$12",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "5% 0ff",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: colorconstants.green),
                    ),
                  ],
                ),
              ],
            )),
        Positioned(
            top: 8,
            right: 10,
            child: Icon(
              (Icons.favorite_border_outlined),
              color: colorconstants.green,
            ))
      ]),
    );
  }
}
