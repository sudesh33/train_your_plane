
import 'package:flutter/material.dart';
import 'package:trainyourplane/constants/color_constant.dart';
import 'package:trainyourplane/widgets/bottom_navigaion_typ.dart';
import 'package:trainyourplane/widgets/custom_list_item.dart';

class ScrollTab extends StatefulWidget {
  @override
  _ScrollTabState createState() => _ScrollTabState();
}

class _ScrollTabState extends State<ScrollTab>
    with SingleTickerProviderStateMixin {
  final List<Widget> myTabs = [
    Tab(
      child: Container(

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: mcolorblue2, width: 1)),
        // margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height /75),
        child: Align(
          alignment: Alignment.center,
          child: Text("Tab 1"),
        ),
      ),
    ),
    Tab(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: mcolorblue2, width: 1)),
        child: Align(
          alignment: Alignment.center,
          child: Text("Tab  2"),
        ),
      ),
    ),
    Tab(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: mcolorblue2, width: 1)),
        child: Align(
          alignment: Alignment.center,
          child: Text("Tab  3"),
        ),
      ),
    ),
  ];

  late TabController _tabController;
  int _tabIndex = 0;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {
        _tabIndex = _tabController.index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mcolorblue2,
      bottomNavigationBar: BottomnavigationTYP(),

      body: SafeArea(

        child: ListView(
          padding: EdgeInsets.all(15),
          children: <Widget>[
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
          child:  SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width /20, top: MediaQuery.of(context).size.height /20),
                  child: const Text(
                    'Free Tips',
                    style: TextStyle(
                      color: mcolorblue2,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(14.0),
                  //   color: const Color(0xffffffff),
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: const Color(0x2e000000),
                  //       offset: Offset(0, 0),
                  //       blurRadius: 10,
                  //     ),
                  //   ],
                  // ),
                  child: Column(
                    children: <Widget>[
                      TabBar(
                        controller: _tabController,
                        unselectedLabelColor:mcolorblue2,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: mcolorblue2,

                        ),
                        tabs: myTabs,
                      ),
                      SingleChildScrollView(
                        child: [
                          Column(

                            children: [
                              CustomListItem(
                                user: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with  ',
                                viewCount: 999000,
                                thumbnail: Image.asset('assets/images/profile-pic.jpg',height: 150,width: 50,),
                                // Container(
                                //   decoration: const BoxDecoration(color: Colors.blue),
                                // ),
                                title: 'Heading Text',
                                color:  blue3,
                              ),
                              CustomListItem(
                                user: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with  ',
                                viewCount: 999000,
                                thumbnail: Image.asset('assets/images/profile-pic.jpg',height: 150,width: 50,),
                                // Container(
                                //   decoration: const BoxDecoration(color: Colors.blue),
                                // ),
                                title: 'Heading Text 2',
                                color:  Colors.green,
                              ),
                              CustomListItem(
                                user: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with  ',
                                viewCount: 999000,
                                thumbnail: Image.asset('assets/images/profile-pic.jpg',height: 150,width: 50,),
                                // Container(
                                //   decoration: const BoxDecoration(color: Colors.blue),
                                // ),
                                title: 'Heading Text 3',
                                color:  Colors.amber,
                              ),
                              CustomListItem(
                                user: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with  ',
                                viewCount: 999000,
                                thumbnail: Image.asset('assets/images/profile-pic.jpg',height: 150,width: 50,),
                                // Container(
                                //   decoration: const BoxDecoration(color: Colors.blue),
                                // ),
                                title: 'Heading Text 3',
                                color:  blue3,
                              ),
                            ],
                          ),
                          Column(

                            children: [
                              CustomListItem(
                                user: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with  ',
                                viewCount: 999000,
                                thumbnail: Image.asset('assets/images/profile-pic.jpg',height: 150,width: 50,),
                                // Container(
                                //   decoration: const BoxDecoration(color: Colors.blue),
                                // ),
                                title: 'Heading Text',
                                color:  Colors.yellow,
                              ),
                              CustomListItem(
                                user: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with  ',
                                viewCount: 999000,
                                thumbnail: Image.asset('assets/images/profile-pic.jpg',height: 150,width: 50,),
                                // Container(
                                //   decoration: const BoxDecoration(color: Colors.blue),
                                // ),
                                title: 'Heading Text 2',
                                color:  Colors.green,
                              ),
                              CustomListItem(
                                user: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with  ',
                                viewCount: 999000,
                                thumbnail: Image.asset('assets/images/profile-pic.jpg',height: 150,width: 50,),
                                // Container(
                                //   decoration: const BoxDecoration(color: Colors.blue),
                                // ),
                                title: 'Heading Text 3',
                                color:  Colors.amber,
                              ),
                              CustomListItem(
                                user: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with  ',
                                viewCount: 999000,
                                thumbnail: Image.asset('assets/images/profile-pic.jpg',height: 150,width: 50,),
                                // Container(
                                //   decoration: const BoxDecoration(color: Colors.blue),
                                // ),
                                title: 'Heading Text 3',
                                color:  blue3,
                              ),
                            ],
                          ),
                          Column(

                            children: [
                              CustomListItem(
                                user: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with  ',
                                viewCount: 999000,
                                thumbnail: Image.asset('assets/images/profile-pic.jpg',height: 150,width: 50,),
                                // Container(
                                //   decoration: const BoxDecoration(color: Colors.blue),
                                // ),
                                title: 'Heading Text',
                                color:  Colors.black12,
                              ),
                              CustomListItem(
                                user: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with  ',
                                viewCount: 999000,
                                thumbnail: Image.asset('assets/images/profile-pic.jpg',height: 150,width: 50,),
                                // Container(
                                //   decoration: const BoxDecoration(color: Colors.blue),
                                // ),
                                title: 'Heading Text 2',
                                color:  Colors.green,
                              ),
                              CustomListItem(
                                user: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with  ',
                                viewCount: 999000,
                                thumbnail: Image.asset('assets/images/profile-pic.jpg',height: 150,width: 50,),
                                // Container(
                                //   decoration: const BoxDecoration(color: Colors.blue),
                                // ),
                                title: 'Heading Text 3',
                                color:  Colors.amber,
                              ),
                              CustomListItem(
                                user: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with  ',
                                viewCount: 999000,
                                thumbnail: Image.asset('assets/images/profile-pic.jpg',height: 150,width: 50,),
                                // Container(
                                //   decoration: const BoxDecoration(color: Colors.blue),
                                // ),
                                title: 'Heading Text 3',
                                color:  blue3,
                              ),
                            ],
                          ),


                        ][_tabIndex],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          )


        ),


          ],
        ),
      ),
    );
  }
}

Widget tab_pending() {
  return ListView( // static list view - not memory efficient
    scrollDirection: Axis.vertical,
    padding: const EdgeInsets.all(8.0),
    itemExtent: 106.0,
    children: <Widget>[
      CustomListItem(
        user: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with  ',
        viewCount: 999000,
        thumbnail: Image.asset('assets/images/profile-pic.jpg',height: 150,width: 50,),
        // Container(
        //   decoration: const BoxDecoration(color: Colors.blue),
        // ),
        title: 'Heading Text',
        color:  blue3,
      ),

      CustomListItem(
        user: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with  ',
        viewCount: 999000,
        thumbnail: Image.asset('assets/images/profile-pic.jpg',height: 150,width: 50,),
        // Container(
        //   decoration: const BoxDecoration(color: Colors.blue),
        // ),
        title: 'Heading Text2',
        color:  Colors.amberAccent,
      ),

      CustomListItem(
        user: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with  ',
        viewCount: 999000,
        thumbnail: Image.asset('assets/images/profile-pic.jpg',height: 150,width: 50,),
        // Container(
        //   decoration: const BoxDecoration(color: Colors.blue),
        // ),
        title: 'Heading Text2',
        color:  Colors.red,
      ),

      CustomListItem(
        user: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with  ',
        viewCount: 999000,
        thumbnail: Image.asset('assets/images/profile-pic.jpg',height: 150,width: 50,),
        // Container(
        //   decoration: const BoxDecoration(color: Colors.blue),
        // ),
        title: 'Heading Text2',
        color:  Colors.green,
      ),
      CustomListItem(
        user: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with  ',
        viewCount: 999000,
        thumbnail: Image.asset('assets/images/profile-pic.jpg',height: 150,width: 50,),
        // Container(
        //   decoration: const BoxDecoration(color: Colors.blue),
        // ),
        title: 'Heading Text2',
        color:  Colors.red,
      ),

      /* Card(
        child: ListTile(
          leading: Image.asset('assets/images/profile-pic.jpg',height: 150,width: 50,),
          title: Text('Three-line ListTile'),
          subtitle: Text(
              'A sufficiently long subtitle warrants three lines.'
          ),
          trailing: Icon(Icons.more_vert),
          isThreeLine: true,
        ),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.check),
        title: Text('Todo item 2'),
        subtitle: Text('DAte -2021/04/07'),
        trailing: Icon(Icons.menu),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.check),
        title: Text('Todo item 3'),
        subtitle: Text('DAte -2021/04/06'),
        trailing: Icon(Icons.menu),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.check),
        title: Text('Todo item 3'),
        subtitle: Text('DAte -2021/04/06'),
        trailing: Icon(Icons.menu),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.check),
        title: Text('Todo item 3'),
        subtitle: Text('DAte -2021/04/06'),
        trailing: Icon(Icons.menu),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.check),
        title: Text('Todo item 3'),
        subtitle: Text('DAte -2021/04/06'),
        trailing: Icon(Icons.menu),
      ),*/

    ],
  );
}