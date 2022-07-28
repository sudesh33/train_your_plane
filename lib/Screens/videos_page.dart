
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trainyourplane/Screens/all_how_to_videos.dart';
import 'package:trainyourplane/Screens/all_videos.dart';
import 'package:trainyourplane/Screens/video_play_screen.dart';
import 'package:trainyourplane/constants/color_constant.dart';
import 'package:trainyourplane/models/youtube_model.dart';
import 'package:trainyourplane/widgets/bottom_navigaion_typ.dart';
import 'package:trainyourplane/widgets/chewie_list_item.dart';
// import 'package:video_player/video_player.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';





class VideosPage extends StatefulWidget {


  @override
  _VideosPageState createState() => _VideosPageState();

}



class _VideosPageState extends State<VideosPage> {
  late YoutubePlayerController _ytbPlayerController;
  List<YoutubeModel> videosListYTP = [
    YoutubeModel(id: 1, youtubeId: '5MeeKvshJkM'),
    YoutubeModel(id: 2, youtubeId: '7vIZp-Ycyhc')

  ];

  List<YoutubeModel> videosListSetup = [
    YoutubeModel(id: 1, youtubeId: 'awMTxaCg7rQ'),
    YoutubeModel(id: 2, youtubeId: 'RGikoWi-zW8')

  ];

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
                              color: mcolorwhite
                          ),

                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width /20, top: MediaQuery.of(context).size.height /20),
                                  child: const Text(
                                    'Videos',
                                    style: TextStyle(
                                      color: mcolorblue2,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width /20, top: MediaQuery.of(context).size.height /25),
                                      child: RichText(
                                        text: const TextSpan(
                                          style: TextStyle(
                                            color: mcolorblue2,
                                            fontSize: 20,
                                          ),
                                          children: [
                                            TextSpan(text: 'How to use'),
                                            TextSpan(text: ' TYP',
                                                style: TextStyle(fontWeight: FontWeight.bold)),
                                          ],
                                        ),
                                      ),


                                    ),

                                    Container(
                                      // alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width /4, top: MediaQuery.of(context).size.height /25),

                                      child:
                                      GestureDetector(
                                        child: const Text(
                                          'See All',

                                          style: TextStyle(
                                            color: mcolorblue2,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,

                                          ),

                                        ),
                                        onTap: () {

                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => AllHowToVideos( title: 'How to Videos' ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
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
                               /* ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: videosListYTP.length,
                                    physics: AlwaysScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return
                                        GestureDetector(
                                        onTap: () {
                                          final _newCode = videosListYTP[index].youtubeId;

                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: _newCode ),
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
                                                    "https://img.youtube.com/vi/${videosListYTP[index].youtubeId}/0.jpg",
                                                    // "https://img.youtube.com/vi/QPrvKooQrQA/0.jpg",
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
                                      );
                                    }),*/
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width /20, top: MediaQuery.of(context).size.height /25),
                                      child: RichText(
                                        text: const TextSpan(
                                          style: TextStyle(
                                            color: mcolorblue2,
                                            fontSize: 20,
                                          ),
                                          children: [
                                            TextSpan(text: 'Skills &'),
                                            TextSpan(text: 'Drills',
                                                style: TextStyle(fontWeight: FontWeight.bold)),
                                          ],
                                        ),
                                      ),


                                    ),

                                    Container(
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width /3, top: MediaQuery.of(context).size.height /25),
                                      child:
                                      GestureDetector(
                                        child: const Text(
                                          'See All',
                                          style: TextStyle(
                                            color: mcolorblue2,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),

                                        ),
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => AllVideos( title: 'All Skills & Drills Videos' ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              GestureDetector(
                                  onTap: () {
                                    // final _newCode = videosListYTP[index].youtubeId;

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "5MeeKvshJkM" ),
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
                                              "https://img.youtube.com/vi/5MeeKvshJkM/maxresdefault.jpg",
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
                                        builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "7vIZp-Ycyhc" ),
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
                                              "https://img.youtube.com/vi/7vIZp-Ycyhc/maxresdefault.jpg",
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
                                /*ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: videosListSetup.length,
                                    physics: AlwaysScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          final _newCode = videosListSetup[index].youtubeId;

                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: _newCode ),
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
                                                    "https://img.youtube.com/vi/${videosListSetup[index].youtubeId}/0.jpg",
                                                    // "https://img.youtube.com/vi/QPrvKooQrQA/0.jpg",
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
                                      );
                                    }),*/


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