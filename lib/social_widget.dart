import 'package:flutter/material.dart';
import 'model/lesson.dart';
import 'DetailPage.dart';

class SocialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  ListPage(title: '橙姑娘社群'),
    );
  }
}

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List lessons;

  @override
  void initState() {
    lessons = getLessons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Card makeListTile(Lesson lesson) => Card(
          child:Row(
            children:<Widget>[
              Container(
                child:Image.network('https://scontent.fkhh1-2.fna.fbcdn.net/v/t1.0-1/p100x100/47384412_2118588608161863_5513875969472987136_n.jpg?_nc_cat=111&_nc_ht=scontent.fkhh1-2.fna&oh=5176560f72f067f11fb0700f883cb69d&oe=5CFA9EF0'),
              width:28,
              height:28,
              ),

              Text('redan'),


  ],
          ),


//          Text(
//            lesson.title,
////            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//          ),

//          trailing:
//              Icon(Icons.dehaze, color: Colors.black),
//          onTap: () {
//            Navigator.push(
//                context,
//                MaterialPageRoute(
//                    builder: (context) => DetailPage(lesson: lesson)));
//          },
        );

    Card makeCard(Lesson lesson) => Card(
          child: Container(
            child: makeListTile(lesson),
          ),
        );

    final makeBody = Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: lessons.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(lessons[index]);
        },
      ),
    );

    final topAppBar = AppBar(
//      elevation: 0.1,
      backgroundColor: Colors.orange,
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {},
        )
      ],
    );

    return Scaffold(
//      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      body: makeBody,
    );
  }
}

List getLessons() {
  return [
    Lesson(
        title: "全世界的八卦我全包了",
        level: "Beginner",
        indicatorValue: 0.33,
        price: 20,
        content:
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is ructed."),
  ];
}
