import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomCardSheet extends StatelessWidget {
  const BottomCardSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      padding: EdgeInsets.only(top: 20),
      color: Color(0xffceddee),
      child: Column(
        children: [
          Container(
            height: 500,
            child: SingleChildScrollView(
                child: Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xfff5f9fd),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 1,
                          color: Color(0xff475269).withOpacity(0.3),
                        )
                      ]),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
