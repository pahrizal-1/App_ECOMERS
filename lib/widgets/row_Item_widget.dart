import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class RowItemWidget extends StatelessWidget {
  const RowItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 5; i++)
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xfff5f9fd),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 1,
                      color: Color(0xff475268).withOpacity(0.3))
                ],
              ),
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, right: 70),
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Color(0xff475269),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Image.asset(
                        'assets/images/$i.png',
                        height: 150,
                        width: 150,
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'Nike Shoe',
                          style: TextStyle(
                              color: Color(0xff475269),
                              fontSize: 23,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Men't Shoe",
                          style: TextStyle(
                            color: Color(0xff475269).withOpacity(0.8),
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              "\$50",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xff475269),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Icon(
                                CupertinoIcons.cart_fill_badge_plus,
                                color: Colors.white,
                                size: 25,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
