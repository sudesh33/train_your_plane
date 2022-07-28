// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trainyourplane/Screens/video_play_screen.dart';
import 'package:trainyourplane/constants/color_constant.dart';
import 'package:trainyourplane/widgets/bottom_navigaion_typ.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

/*YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: 'H9eX0Sd5Tfc',
  flags: const YoutubePlayerFlags(
    autoPlay: false,
    mute: false,
  ),
);*/
// bool shouldPop = true;
List<double> list = [1.2, 2.0, 3.5, 4.5, 5.5];


class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 115,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Image.asset(
            'assets/images/logo.png',
            width: 50,
            height: 50,
          ),
          centerTitle: true,


          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                // onPressed: () {
                //   Scaffold.of(context).openDrawer();
                //
                // },
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: SvgPicture.asset('assets/svg/menu.svg'),
                tooltip: MaterialLocalizations
                    .of(context)
                    .openAppDrawerTooltip,
              );
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: SvgPicture.asset(
                'assets/svg/ringing.svg',
                color: mcolorblue2,
              ),
              tooltip: 'Show Snackbar',
              onPressed: () {

              },
            ),
          ]),
      backgroundColor: mcolorwhite,
      bottomNavigationBar: BottomnavigationTYP(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                const Text(
                  'Train your',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: mcolorblue2),
                ),
                const Text(
                  'Plain',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: mcolorblue2),
                ),
                const Text(
                  'PRACTICE SMARTER IMPROVE FASTER',
                  textAlign: TextAlign.center,

                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: mcolorblue2,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width/35,
                ),
                Container(


                  decoration: const BoxDecoration(
                    color: mcolorblue2,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [

                        Container(
                          margin:
                           EdgeInsets.only(top:  MediaQuery.of(context).size.width/10,bottom: MediaQuery.of(context).size.width /5 ),
                          child: const Text(
                            'Welcome',
                            style: TextStyle(
                              color: mcolorwhite,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // final _newCode = videosListYTP[index].youtubeId;

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    VideoPlayerScreen(title: 'Video',
                                        initialId: "H0B6s9bwt8U"),
                              ),
                            );
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 4,
                            margin: EdgeInsets.only(
                                left: MediaQuery .of(context).size.width / 10,
                                right: MediaQuery.of(context).size.width / 10,
                                bottom: MediaQuery.of(context).size.height / 5
                            ),
                            // padding: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Stack(
                                fit: StackFit.expand,
                                children: <Widget>[
                                  Positioned(
                                    child: CachedNetworkImage(
                                      imageUrl:
                                      // "https://img.youtube.com/vi/${videosListYTP[index].youtubeId}/0.jpg",
                                      "http://i3.ytimg.com/vi/H0B6s9bwt8U/hqdefault.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        'assets/images/ytbPlayBotton.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        elevation: 1,
        child:
        ListView(
          children: [
            ListTile(
              title: const Text('About',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: mcolorblue2,
                )
              ),
              leading:SvgPicture.asset('assets/svg/about_us_colored.svg'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              title: const Text('Videos',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: mcolorblue2,
                )
              ),
              leading:SvgPicture.asset('assets/svg/videos_colored.svg'),
              onTap: () {
                Navigator.pushNamed(context, '/videos');
              },
            ),

            ListTile(
              title: const Text('Testimonials',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: mcolorblue2,
                )
              ),
              leading:SvgPicture.asset('assets/svg/testimnonails_colored.svg'),
              onTap: () {
                Navigator.pushNamed(context, '/testimonials');
              },
            ),



            ListTile(
              title: const Text('Contact Us',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: mcolorblue2,
                )
              ),
              leading:SvgPicture.asset('assets/svg/about_us_colored.svg'),
              onTap: () {
                Navigator.pushNamed(context, '/contact_us');
              },
            ),
            // ListTile(
            //   title: const Text('Tabs',
            //     style: TextStyle(
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold,
            //       color: mcolorblue2,
            //     )
            //   ),
            //   leading:SvgPicture.asset('assets/svg/about_us_colored.svg'),
            //   onTap: () {
            //     Navigator.pushNamed(context, '/scroll_tabs');
            //   },
            // ),
          ],
        ),
      ),
    );

    // return
  }
}
