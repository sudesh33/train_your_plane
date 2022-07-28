import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:trainyourplane/constants/color_constant.dart';
import 'package:trainyourplane/widgets/bottom_navigaion_typ.dart';

class TestimonialsPage extends StatefulWidget {
  @override
  _TestimonialsPageState createState() => _TestimonialsPageState();
}

class _TestimonialsPageState extends State<TestimonialsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: mcolorblue2,
      bottomNavigationBar: BottomnavigationTYP(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                            'Testimonials',
                            style: TextStyle(
                              color: mcolorblue2,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: blue3,
                            borderRadius: BorderRadius.all(
                              Radius.circular(24),
                            ),
                          ),
                          width: 300,
                          margin: EdgeInsets.only(top: 5, bottom: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipOval(
                                  // borderRadius: BorderRadius.circular(1000),
                                  child: Image.network(
                                    'https://trainyourplane.com.au/wp-content/uploads/2022/07/27B3C1B0-5D9A-487D-8369-5651B66EFB45.jpeg',
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Text(
                                'Jack M.',
                                style: TextStyle(
                                  color: mcolorblue2,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Train Your Plane has improved my awareness of how I should swing each club. I particularly like that I can use it at home',
                                  style: TextStyle(
                                    color: mcolorblue2,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: blue3,
                            borderRadius: BorderRadius.all(
                              Radius.circular(24),
                            ),
                          ),
                          width: 300,
                          margin: EdgeInsets.only(top: 5, bottom: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipOval(
                                  // borderRadius: BorderRadius.circular(1000),
                                  child: Image.network(
                                    'https://trainyourplane.com.au/wp-content/uploads/2022/07/1346E4A4-E613-4A4D-B967-878CFC91A48B.jpeg',
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Text(
                                'Lisa R.',
                                style: TextStyle(
                                  color: mcolorblue2,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'I get a little embarrassed practicing at a public golf driving range, Train Your Plane has really helped me improve my skills',
                                  style: TextStyle(
                                    color: mcolorblue2,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: blue3,
                            borderRadius: BorderRadius.all(
                              Radius.circular(24),
                            ),
                          ),
                          width: 300,
                          margin: EdgeInsets.only(top: 5, bottom: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipOval(
                                  // borderRadius: BorderRadius.circular(1000),
                                  child: Image.network(
                                    'https://trainyourplane.com.au/wp-content/uploads/2022/07/BBD79D82-A22A-4005-8174-1340C0E8650E.jpeg',
                                    width: 75,
                                    height: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Text(
                                'Peter P.',
                                style: TextStyle(
                                  color: mcolorblue2,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'When I first bought the Train Your Plane, I was planning on using it mostly for my full swing, but it has helped my short game a lot also',
                                  style: TextStyle(
                                    color: mcolorblue2,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
