import 'package:flutter/material.dart';
import 'package:trainyourplane/constants/color_constant.dart';
import 'package:trainyourplane/widgets/bottom_navigaion_typ.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: mcolorblue2,
      bottomNavigationBar: BottomnavigationTYP(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: mcolorwhite),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: const Text(
                          'ABOUT TYP',
                          style: TextStyle(
                            color: mcolorblue2,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                        child: const Text(
                          "Train Your Plane will stop golfers slicing and improve their consistency. The three inflatable pieces (base, wall and tube) that are used in the Train Your Plane System allow you to practice the correct swing plane as well as all areas of your golf technique at home, or on the practice range.",
                          style: TextStyle(
                            color: mcolorblue2,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 10, top: 15),
                        child: const Text(
                          'Glenn  Whittle',
                          style: TextStyle(
                            color: mcolorblue2,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                        child: Image.asset(
                        'assets/images/PGA_LOGO.png',
                        height: 75,
                        width: 75,

                      ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                            left: 10, top: 10, right: 10, bottom: 10),
                        child: const Text(
                          "– PGA Award winning Coach",
                          style: TextStyle(
                            color: mcolorblue2,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),

                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                            left: 10, top: 10, right: 10, bottom: 10),
                        child: const Text(
                          "– Golf Digest Australia, Top 50 Coach",
                          style: TextStyle(
                            color: mcolorblue2,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),  Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                            left: 10, top: 10, right: 10, bottom: 10),
                        child: const Text(
                          "– 30 years coaching experience",
                          style: TextStyle(
                            color: mcolorblue2,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),  Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                            left: 10, top: 10, right: 10, bottom: 10),
                        child: const Text(
                          "– Coached over 20 Professionals and thousands of amateurs",
                          style: TextStyle(
                            color: mcolorblue2,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
