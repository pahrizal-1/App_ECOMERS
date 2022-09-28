import 'package:app_ecom/widgets/AllitemsWidgets.dart';
import 'package:app_ecom/widgets/BottomHome.dart';
import 'package:app_ecom/widgets/row_Item_widget.dart';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          //TODO: Constum APPbar
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xfff5f9fd),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 1,
                            color: Color(0xff475269).withOpacity(0.3),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.sort,
                        size: 30,
                        color: Color(0xff475269),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xfff5f9fd),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 1,
                            color: Color(0xff475269).withOpacity(0.3),
                          ),
                        ],
                      ),
                      child: Badge(
                        badgeColor: Colors.redAccent,
                        padding: EdgeInsets.all(7),
                        badgeContent: Text(
                          '3',
                          style: TextStyle(color: Colors.white),
                        ),
                        child: Icon(
                          Icons.notifications,
                          size: 30,
                          color: Color(0xff475269),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: BoxDecoration(
                  color: Color(0xfff5f9fd),
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 1,
                      color: Color(0xff475269).withOpacity(0.3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 1),
                      width: 260,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: 'Search'),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.search,
                      size: 27,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              RowItemWidget(),
              SizedBox(
                height: 20,
              ),
              AllItemsWidgets()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomHome(),
    );
  }
}
