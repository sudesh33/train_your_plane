
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trainyourplane/models/youtube_model.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class VideoPlayerScreen extends StatefulWidget {

  // ignore: non_constant_identifier_names
  const VideoPlayerScreen({Key? key, required this.title,  required this.initialId}) : super(key: key);
  final String title;
  final String initialId ;

 final String test= "te";
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {





   late final YoutubePlayerController _ytbPlayerController = YoutubePlayerController(
     initialVideoId: widget.initialId,
     // initialVideoId: videosList[0].youtubeId,
     params: const YoutubePlayerParams(
       showFullscreenButton: true,
     ),
   );

  // List<YoutubeModel> videosList = [
  //   YoutubeModel(id: 1, youtubeId: 'H9eX0Sd5Tfc'),
  //   YoutubeModel(id: 2, youtubeId: 'QPrvKooQrQA')
  //
  // ];







  @override
  void initState() {
    super.initState();

    // print(widget.initialId);

    _setOrientation([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);



    // WidgetsBinding.instance!.addPostFrameCallback((_) {
    //   setState(() {
    //     _ytbPlayerController = YoutubePlayerController(
    //       // initialVideoId: initialId,
    //       initialVideoId: videosList[0].youtubeId,
    //       params: YoutubePlayerParams(
    //         showFullscreenButton: true,
    //       ),
    //     );
    //   });
    // });
  }

  @override
  void dispose() {
    super.dispose();

    _setOrientation([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _ytbPlayerController.close();
  }

  _setOrientation(List<DeviceOrientation> orientations) {
    SystemChrome.setPreferredOrientations(orientations);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          children: [
            _buildYtbView(),
            // _buildMoreVideoTitle(),
            // _buildMoreVideosView(),
          ],
        ),
      ),
    );
  }

  _buildYtbView() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: _ytbPlayerController != null
          ? YoutubePlayerIFrame(controller: _ytbPlayerController)
          : Center(child: CircularProgressIndicator()),
    );
  }

 /* _buildMoreVideoTitle() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 10, 182, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "More videos",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }

  _buildMoreVideosView() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
            itemCount: videosList.length,
            physics: AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  final _newCode = videosList[index].youtubeId;
                  _ytbPlayerController.load(_newCode);
                  _ytbPlayerController.stop();
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                  margin: EdgeInsets.symmetric(vertical: 7),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Positioned(
                          child: CachedNetworkImage(
                            imageUrl:
                            // "https://img.youtube.com/vi/${videosList[index].youtubeId}/0.jpg",
                            "https://img.youtube.com/vi/QPrvKooQrQA/0.jpg",
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
            }),
      ),
    );

  }*/

}