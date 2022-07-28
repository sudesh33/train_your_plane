
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trainyourplane/Screens/video_play_screen.dart';
import 'package:trainyourplane/constants/color_constant.dart';
import 'package:trainyourplane/models/youtube_model.dart';
import 'package:trainyourplane/widgets/bottom_navigaion_typ.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class AllVideos extends StatefulWidget {

  const AllVideos({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _AllVideosState createState() => _AllVideosState();

}



class _AllVideosState extends State<AllVideos> {
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

                        /*ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: YTPListAll.length,
                                    physics: AlwaysScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          final _newCode = YTPListAll[index].youtubeId;

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
                                                    "https://img.youtube.com/vi/${YTPListAll[index].youtubeId}/0.jpg",
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
                                      "http://img.youtube.com/vi/7vIZp-Ycyhc/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "bo771WTxAuY" ),
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
                                      "http://img.youtube.com/vi/bo771WTxAuY/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "SjulIPfTIcw" ),
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
                                      "http://img.youtube.com/vi/SjulIPfTIcw/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "0N5w-Rh0UEA" ),
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
                                      "http://img.youtube.com/vi/0N5w-Rh0UEA/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "D4h_DGUpnUA" ),
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
                                      "http://img.youtube.com/vi/D4h_DGUpnUA/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "LtKDRKmv3Fw" ),
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
                                      "http://img.youtube.com/vi/LtKDRKmv3Fw/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "zUnhU9FONao" ),
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
                                      "http://img.youtube.com/vi/zUnhU9FONao/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "IcywRXhIL-o" ),
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
                                      "http://img.youtube.com/vi/IcywRXhIL-o/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "FHjIGlyQ8T0" ),
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
                                      "http://img.youtube.com/vi/FHjIGlyQ8T0/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "lz1ja4OWOOI" ),
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
                                      "http://img.youtube.com/vi/lz1ja4OWOOI/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "jUpbE1KP_Gs" ),
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
                                      "http://img.youtube.com/vi/jUpbE1KP_Gs/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "8WIsFUL9o_c" ),
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
                                      "http://img.youtube.com/vi/8WIsFUL9o_c/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "Xkm1k25-s68" ),
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
                                      "http://img.youtube.com/vi/Xkm1k25-s68/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "FG0GAvpWqu0" ),
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
                                      "http://img.youtube.com/vi/FG0GAvpWqu0/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "Vq3aJfi4FD8" ),
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
                                      "https://img.youtube.com/vi/Vq3aJfi4FD8/0.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "SpdOOIC_CIY" ),
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
                                      "http://img.youtube.com/vi/SpdOOIC_CIY/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "AfUKpwte7-s" ),
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
                                      "http://img.youtube.com/vi/AfUKpwte7-s/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "uygHlFUDc4k" ),
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
                                      "http://img.youtube.com/vi/uygHlFUDc4k/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "HKyZX--iIsU" ),
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
                                      "http://img.youtube.com/vi/HKyZX--iIsU/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "rUiilmVJTdk" ),
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
                                      "http://img.youtube.com/vi/rUiilmVJTdk/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "hU22BHBMjFU" ),
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
                                      "http://img.youtube.com/vi/hU22BHBMjFU/maxresdefault.jpg",
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
                                builder: (context) => VideoPlayerScreen( title: 'Video',  initialId: "Yy8OMV6nT1U" ),
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
                                      "http://img.youtube.com/vi/Yy8OMV6nT1U/maxresdefault.jpg",
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