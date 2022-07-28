
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trainyourplane/Screens/video_play_screen.dart';
import 'package:trainyourplane/constants/color_constant.dart';
import 'package:trainyourplane/models/youtube_model.dart';
import 'package:trainyourplane/widgets/bottom_navigaion_typ.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class AllHowToVideos extends StatefulWidget {

  const AllHowToVideos({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _AllHowToVideosState createState() => _AllHowToVideosState();

}



class _AllHowToVideosState extends State<AllHowToVideos> {
  late YoutubePlayerController _ytbPlayerController;

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
                        // print('');
                        // Navigator.pushNamed(context, '/play_videos');
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
                          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width /20, top: MediaQuery.of(context).size.height /20),
                          child:  Text(
                            widget.title,
                            style: const TextStyle(
                              color: mcolorblue2,
                              fontSize: 30,
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "XuG8SajyAME" ),
                              ),
                            );
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 5,
                            margin: EdgeInsets.only(top: 5,left: MediaQuery.of(context).size.height /20,right: MediaQuery.of(context).size.height /20),
                            padding: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Stack(
                                fit: StackFit.expand,
                                children: <Widget>[
                                  Positioned(
                                    child: CachedNetworkImage(
                                      imageUrl:
                                      // "https://img.youtube.com/vi/${videosListYTP[index].youtubeId}/0.jpg",
                                      "https://img.youtube.com/vi/XuG8SajyAME/maxresdefault.jpg",
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
                        GestureDetector(
                          onTap: () {
                            // final _newCode = videosListYTP[index].youtubeId;

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "uLnFjivbER8" ),
                              ),
                            );
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 5,
                            margin: EdgeInsets.only(top: 5,left: MediaQuery.of(context).size.height /20,right: MediaQuery.of(context).size.height /20),
                            padding: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Stack(
                                fit: StackFit.expand,
                                children: <Widget>[
                                  Positioned(
                                    child: CachedNetworkImage(
                                      imageUrl:
                                      // "https://img.youtube.com/vi/${videosListYTP[index].youtubeId}/0.jpg",
                                      "https://img.youtube.com/vi/uLnFjivbER8/maxresdefault.jpg",
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
                        GestureDetector(
                          onTap: () {
                            // final _newCode = videosListYTP[index].youtubeId;

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "g3w8bX4nFCc" ),
                              ),
                            );
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 5,
                            margin: EdgeInsets.only(top: 5,left: MediaQuery.of(context).size.height /20,right: MediaQuery.of(context).size.height /20),
                            padding: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Stack(
                                fit: StackFit.expand,
                                children: <Widget>[
                                  Positioned(
                                    child: CachedNetworkImage(
                                      imageUrl:
                                      // "https://img.youtube.com/vi/${videosListYTP[index].youtubeId}/0.jpg",
                                      "https://img.youtube.com/vi/g3w8bX4nFCc/maxresdefault.jpg",
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
                        GestureDetector(
                          onTap: () {
                            // final _newCode = videosListYTP[index].youtubeId;

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "eDWqwycfxhw" ),
                              ),
                            );
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 5,
                            margin: EdgeInsets.only(top: 5,left: MediaQuery.of(context).size.height /20,right: MediaQuery.of(context).size.height /20),
                            padding: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Stack(
                                fit: StackFit.expand,
                                children: <Widget>[
                                  Positioned(
                                    child: CachedNetworkImage(
                                      imageUrl:
                                      // "https://img.youtube.com/vi/${videosListYTP[index].youtubeId}/0.jpg",
                                      "https://img.youtube.com/vi/eDWqwycfxhw/maxresdefault.jpg",
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
                        GestureDetector(
                          onTap: () {
                            // final _newCode = videosListYTP[index].youtubeId;

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "8US3X1Cmnu4" ),
                              ),
                            );
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 5,
                            margin: EdgeInsets.only(top: 5,left: MediaQuery.of(context).size.height /20,right: MediaQuery.of(context).size.height /20),
                            padding: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Stack(
                                fit: StackFit.expand,
                                children: <Widget>[
                                  Positioned(
                                    child: CachedNetworkImage(
                                      imageUrl:
                                      // "https://img.youtube.com/vi/${videosListYTP[index].youtubeId}/0.jpg",
                                      "https://img.youtube.com/vi/8US3X1Cmnu4/maxresdefault.jpg",
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
                        GestureDetector(
                          onTap: () {
                            // final _newCode = videosListYTP[index].youtubeId;

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "Fss87AydoEM" ),
                              ),
                            );
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 5,
                            margin: EdgeInsets.only(top: 5,left: MediaQuery.of(context).size.height /20,right: MediaQuery.of(context).size.height /20),
                            padding: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Stack(
                                fit: StackFit.expand,
                                children: <Widget>[
                                  Positioned(
                                    child: CachedNetworkImage(
                                      imageUrl:
                                      // "https://img.youtube.com/vi/${videosListYTP[index].youtubeId}/0.jpg",
                                      "https://img.youtube.com/vi/Fss87AydoEM/maxresdefault.jpg",
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
                  )),





            ],
          ),
        ),
      ),
    );
  }

}