import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttergroupui/controller/List2_controller.dart';
import 'package:fluttergroupui/core/color_constants/colorconstants.dart';
import 'package:fluttergroupui/model/List2_model/List2_model.dart';
import 'package:fluttergroupui/view/product_details/productdetails.dart';

class Row2 extends StatelessWidget {
  const Row2({super.key, required this.listmodel});
  final List2model listmodel;
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
                          image: NetworkImage(listmodel.propic),
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
                  listmodel.textname,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Text(
                  "1kg",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Text(
                      listmodel.price,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      listmodel.priceoff,
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
