import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trainyourplane/constants/color_constant.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    Key? key,
    required this.thumbnail,
    required this.title,
    required this.user,
    required this.viewCount,
    required this.color,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String user;
  final int viewCount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all( 5),
      margin: EdgeInsets.all(10),
      // height: MediaQuery.of(context).size.height/5,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: thumbnail,
          ),
          Expanded(
            flex: 3,
            child: _VideoDescription(
              title: title,
              user: user,
              viewCount: viewCount,
            ),
          ),
          // const Icon(
          //   Icons.more_vert,
          //   size: 16.0,
          // ),
        ],
      ),
    );
  }
}

class _VideoDescription extends StatelessWidget {
  const _VideoDescription({
    Key? key,
    required this.title,
    required this.user,
    required this.viewCount,
  }) : super(key: key);

  final String title;
  final String user;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
                color: mcolorblue2
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            user,
            style: const TextStyle(fontSize: 12.0),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          // Text(
          //   '$viewCount views',
          //   style: const TextStyle(fontSize: 10.0),
          // ),
        ],
      ),
    );
  }
}
