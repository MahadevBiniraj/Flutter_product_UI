import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttergroupui/core/color_constants/colorconstants.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconstants.white.withOpacity(0.9),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Checkout",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          // first container
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Stack(children: [
              Container(
                height: 170,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorconstants.white,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://5.imimg.com/data5/SELLER/Default/2023/4/298405722/ZZ/VZ/SV/152317219/cashew-splits--500x500.jpg"),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
              ),
            ]),
          ),
          // second container

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              height: 170,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorconstants.white,
              ),
            ),
          ),

          //third container

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorconstants.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
