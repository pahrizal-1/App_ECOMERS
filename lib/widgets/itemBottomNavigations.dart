import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ItemNavigationBar extends StatelessWidget {
  const ItemNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff5f9fd),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            decoration: BoxDecoration(
                color: Color(0xff475269),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 1,
                    color: Color(0xff475269).withOpacity(0.3),
                  )
                ]),
            child: Row(
              children: const [
                Text(
                  'Add To Cart',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  CupertinoIcons.cart_badge_plus,
                  size: 32,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            decoration: BoxDecoration(
                color: Color(0xff475269),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 1,
                    color: Color(0xff475269).withOpacity(0.3),
                  )
                ]),
            child: Icon(
              Icons.shopping_bag,
              size: 45,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
