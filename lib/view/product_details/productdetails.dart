import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttergroupui/controller/product_list_controller/productList.dart';
import 'package:fluttergroupui/core/color_constants/colorconstants.dart';

class Productdetails extends StatelessWidget {
  const Productdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconstants.white.withOpacity(0.9),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "product Details",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Stack(children: [
              Container(
                height: 300,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorconstants.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 150,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn.grofers.com/app/images/products/sliding_image/111483a.jpg?ts=1679656154"),
                                fit: BoxFit.cover)),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  bottom: 10,
                  left: 10,
                  child: Column(
                    children: [
                      Text(
                        "Red Label Tea",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Container(
                        height: 35,
                        width: 70,
                        color: colorconstants.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "4.2",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: colorconstants.white),
                            ),
                            Icon(
                              Icons.star,
                              color: colorconstants.white,
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text("\$12",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w700)),
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
                      )
                    ],
                  )),
              Positioned(
                right: 10,
                top: 10,
                child: Icon(
                  Icons.share,
                  color: colorconstants.green,
                ),
              )
            ]),
          ),

          //second container
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 300,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorconstants.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  // using listviewbuilder
                  ListView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              Productlistcontroller.productList[index].maintext,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              Productlistcontroller.productList[index].subtext,
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "More Details",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: colorconstants.green),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          // two buttons in row
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: colorconstants.green.withOpacity(0.2),
                  ),
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: colorconstants.green,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorconstants.green,
                ),
                child: Center(
                  child: Text(
                    "ADD TO CART",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: colorconstants.white),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
