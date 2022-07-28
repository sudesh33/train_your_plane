
import 'package:flutter/material.dart';
import 'package:trainyourplane/constants/color_constant.dart';
import 'package:trainyourplane/widgets/bottom_navigaion_typ.dart';
import 'package:trainyourplane/widgets/custom_list_item.dart';

class FreeTipsPage extends StatefulWidget{
  @override
  _FreeTipsPageState createState() => _FreeTipsPageState();

}

class _FreeTipsPageState extends State<FreeTipsPage> with SingleTickerProviderStateMixin{
   late TabController _controller ;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: mcolorblue2,
      bottomNavigationBar: BottomnavigationTYP(),
      body: SafeArea(

          child: SingleChildScrollView(

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () { Navigator.of(context).pop();}, icon: const Icon(Icons.arrow_back,color: Colors.white,)),

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
                         height: MediaQuery.of(context).size.height /25,
                       ),
                       Container(
                         // decoration: BoxDecoration(
                         //     color: Theme.of(context).primaryColor,
                         //   borderRadius: BorderRadius.circular(10),
                         // ),
                         //
                         // margin: EdgeInsets.symmetric(horizontal: 10),

                         child: TabBar(
                           controller: _controller,
                           unselectedLabelColor:mcolorblue2,
                           indicatorSize: TabBarIndicatorSize.label,
                           indicator: BoxDecoration(
                               borderRadius: BorderRadius.circular(50),
                               color: mcolorblue2,

                           ),


                           tabs:  [

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
                                   child: Text("Tab 3"),
                                 ),
                               ),
                             ),

                           ],
                         ),
                       ),
                       Container(
                         height: MediaQuery.of(context).size.height/1.8,
                         // height: 200,

                         child: TabBarView(
                           controller: _controller,

                           children: <Widget>[
                             // firstTab(),
                             // firstTab(),
                             // firstTab(),

                             tab_pending(),
                             tab_pending(),
                             tab_pending(),



                           ],
                         ),
                       )
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

/*return  Column(
  
    children: [

      Card(
  
        child:Container(
  
          height: 150,
  
          color: Colors.white,
  
          child: Row(
  
            children: [
  
              Center(
  
                child: Padding(
  
                  padding: EdgeInsets.all(10),
  
                  child: Expanded(
  
                    child:Image.asset("assets/images/profile-pic.jpg"),
  
                    flex:2 ,
  
                  ),
  
                ),
  
              ),
  
              Expanded(
  
                child:Container(
  
                  alignment: Alignment.topLeft,
  
                  child: Column(
  
                    children: [
  
                      Expanded(
  
                        flex: 5,
  
                        child: ListTile(
  
                          title: Text("Shape Of You"),
  
                          subtitle: Text("Ed Sheeran"),
  
                        ),
  
                      ),
  
                      Expanded(
  
                        flex: 5,
  
                        child: Row(
  
                          mainAxisAlignment: MainAxisAlignment.end,
  
                          children: [
  
                            TextButton(
  
                              child:Text("PLAY"),
  
                              onPressed: ()
  
                              {},
  
                            ),
  
                            SizedBox(width: 8,),
  
                            TextButton(
  
                              child: Text("ADD TO QUEUE"),
  
                              onPressed: (){},
  
                            ),
  
                            SizedBox(width: 8,)
  
                          ],
  
                        ),
  
                      )
  
                    ],
  
                  ),
  
                ),
  
                flex:8 ,
  
              ),
  
            ],
  
          ),
  
        ),
  
        elevation: 8,
  
        margin: EdgeInsets.all(10),
  
      ),
  
      Card(
  
        child:Container(
  
          height: 150,
  
          color: Colors.white,
  
          child: Row(
  
            children: [
  
              Center(
  
                child: Padding(
  
                  padding: EdgeInsets.all(10),
  
                  child: Expanded(
  
                    child:Image.asset("assets/images/profile-pic.jpg"),
  
                    flex:2 ,
  
                  ),
  
                ),
  
              ),
  
              Expanded(
  
                child:Container(
  
                  alignment: Alignment.topLeft,
  
                  child: Column(
  
                    children: [
  
                      Expanded(
  
                        flex: 5,
  
                        child: ListTile(
  
                          title: Text("Shape Of You"),
  
                          subtitle: Text("Ed Sheeran"),
  
                        ),
  
                      ),
  
                      Expanded(
  
                        flex: 5,
  
                        child: Row(
  
                          mainAxisAlignment: MainAxisAlignment.end,
  
                          children: [
  
                            TextButton(
  
                              child:Text("PLAY"),
  
                              onPressed: ()
  
                              {},
  
                            ),
  
                            SizedBox(width: 8,),
  
                            TextButton(
  
                              child: Text("ADD TO QUEUE"),
  
                              onPressed: (){},
  
                            ),
  
                            SizedBox(width: 8,)
  
                          ],
  
                        ),
  
                      )
  
                    ],
  
                  ),
  
                ),
  
                flex:8 ,
  
              ),
  
            ],
  
          ),
  
        ),
  
        elevation: 8,
  
        margin: EdgeInsets.all(10),
  
      ),
  
    ],
  
  );*/



Widget firstTab() {
  return SingleChildScrollView(
    child: ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: const <Widget>[
        Card(child: ListTile(title: Text('One-line ListTile'))),
        Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('One-line with leading widget'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('One-line with trailing widget'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text('One-line with both widgets'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('One-line dense ListTile'),
            dense: true,
          ),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(size: 56.0),
            title: Text('Two-line ListTile'),
            subtitle: Text('Here is a second line'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(size: 72.0),
            title: Text('Three-line ListTile'),
            subtitle: Text(
                'A sufficiently long subtitle warrants three lines.'
            ),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
        ),
      ],
    ),
  );
}