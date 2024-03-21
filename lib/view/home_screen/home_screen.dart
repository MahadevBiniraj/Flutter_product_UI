import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttergroupui/controller/List1_controller/List1_controller.dart';
import 'package:fluttergroupui/controller/List2_controller.dart';
import 'package:fluttergroupui/core/color_constants/colorconstants.dart';
import 'package:fluttergroupui/view/home_screen/widgets/grid_row/list_row.dart';
import 'package:fluttergroupui/view/home_screen/widgets/grid_row/list_row2.dart';
import 'package:fluttergroupui/view/product_details/productdetails.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffdfdfd).withOpacity(0.9),
      appBar: AppBar(
        backgroundColor: colorconstants.green,
        toolbarHeight: 110,
        leading: Icon(Icons.sort),
        title: TextField(
          decoration: InputDecoration(
            fillColor: Color(0xffdfe5db).withOpacity(0.5),
            hintText: "search",
            prefixIcon: Icon(Icons.search),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: 150,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellow,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.creativehatti.com/wp-content/uploads/edd/2022/06/Template-banner-of-organic-and-healthy-vegetables-25-large.jpg"),
                      fit: BoxFit.cover)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Category",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                Text(
                  "view all",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: colorconstants.green),
                )
              ],
            ),
            SizedBox(
              height: 120,
              width: double.infinity,
              child: ListView.builder(
                itemCount: List1controller.myList.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Listrow(
                        listmodel: List1controller.myList[index],
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              children: [
                Text(
                  "Best Seller",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 260,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Productdetails(
                              model: List2controller.myList[index],
                            ),
                          ));
                    },
                    child: Row2(
                      listmodel: List2controller.myList[index],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Featured Details",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: colorconstants.green),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
