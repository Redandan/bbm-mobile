import 'package:flutter/material.dart';
import 'story.dart';

class StoryPage extends StatelessWidget {
Story story;
StoryPage(Story story){ this.story = story;}
  @override
  Widget build(BuildContext context) {
    final topContentText = Column(

      children: <Widget>[
        Image.network(story.imgUrl
        ),

      ],
    );

    final topContent = Stack(
      children: <Widget>[
        Container(
          child: Center(
            child: topContentText,
          ),
        ),

      ],
    );

    final commentBtn = IconButton(
        icon: Icon(Icons.comment),
        onPressed: () {

        });
    final likeBtn = IconButton(
        icon: Icon(Icons.thumb_up),
        onPressed: () {

        });
    final shareBtn = IconButton(
        icon: Icon(Icons.share),
        onPressed: () {

        });
    final bookmarkBtn = IconButton(
        icon: Icon(Icons.bookmark),
        onPressed: () {

        });

    final bottomContent = Container(

      child: Center(
        child: Row(
          children: <Widget>[
            likeBtn,Text('${story.width},${story.height} 個讚'),
            commentBtn,
            shareBtn,
            bookmarkBtn,],
        ),
      ),
    );

    return Scaffold(
//      appBar: AppBar(
//        title: new Text('Redan'),
//      ),
      body: ListView(
        children: <Widget>[
          topContent,
          bottomContent,

          Text('“I’ve always been very interested in people, '
              'which is part of the reason I decided to go into '
              'journalism,” says BuzzFeed News reporter and producer '
              'Kassy Cho (@kassy), who was born in Taiwan, grew up in '
              'New Zealand, went to college in the United States, and today, '
              'works in London.'
              'As part of her job, Kassy curates BuzzFeed World (@world) with the intent to inform young people,'
    ' in particular, young women, about important issues happening around the world. '
    '“I try to curate the stories so that the account reflects as diverse a range of human experiences as possible,”'
    'says the 27-year-old. “I think it can be easy sometimes to overlook things that don’t directly affect you, '
    'but there’s such a wide range of experiences internationally. '
    'Every community has its own story, history and struggle, and that’s part of what makes the world so interesting.'
    ' There is, too, a universality to it all — women all around the world are breaking boundaries,'
    ' they are fighting against oppression and inequality,'
    ' they are bringing about positive change to their communities, big or small.”'
    'This March, we’re collaborating with Kassy to celebrate women around the globe who are making an impact in their local community and on Instagram. ❤️ Stay tuned here and on `')],
      ),
    );
  }
}