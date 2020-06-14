import 'package:flutter/material.dart';
import 'package:leaf/model/post_model.dart';
import 'package:leaf/view/pages/post_page.dart';
import 'package:leaf/view/widgets/inherited_widgets/inherited_post_model.dart';

class PostCard extends StatelessWidget {
  final PostModel postData;

  const PostCard({Key key, @required this.postData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //on tap of the whole card.
      onTap: () {
        Navigator.push(context, //using navigator to go to a new page
            MaterialPageRoute(builder: (BuildContext context) {
          //screens and pages are called routes
          return PostPage(
            postData: postData,
          );
        }));
      },
      child: AspectRatio(
        aspectRatio: 6 / 3,
        child: Card(
          //this is the feed card
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(postData.imageURL),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            margin: const EdgeInsets.all(4.0),
            padding: const EdgeInsets.all(4.0),
            child: InheritedPostModel(
              postData: postData,
              child: Column(
                children: <Widget>[
                  //order of the children matters
                  _PostDetails(),
                  Divider(color: Colors.green),
                  _Post()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Post extends StatelessWidget {
  const _Post({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(children: <Widget>[_PostTitleAndSummary()]),
    );
  }
}

class _PostTitleAndSummary extends StatelessWidget {
  const _PostTitleAndSummary({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;
    final TextStyle titleTheme = Theme.of(context).textTheme.headline6;
    final TextStyle summaryTheme = Theme.of(context).textTheme.bodyText1;
    final String title = postData.title;
    final String summary = postData.summary;

    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.only(left: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(title, style: titleTheme),
            SizedBox(height: 1.0),
            Text(summary, style: summaryTheme),
          ],
        ),
      ),
    );
  }
}

class _PostImage extends StatelessWidget {
  const _PostImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;
    return Expanded(flex: 2, child: Image.asset(postData.imageURL));
  }
}

class _PostDetails extends StatelessWidget {
  const _PostDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _UserImage(),
        _UserNameAndEmail(),
        _PostTimeStamp(),
      ],
    );
  }
}

class _UserNameAndEmail extends StatelessWidget {
  const _UserNameAndEmail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle nameTheme = Theme.of(context).textTheme.headline6;
    final TextStyle emailTheme = Theme.of(context).textTheme.bodyText2;
    final PostModel postData = InheritedPostModel.of(context).postData;

    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(postData.author.name, style: nameTheme),
            SizedBox(height: 2.0),
            Text(postData.author.email, style: emailTheme),
          ],
        ),
      ),
    );
  }
}

class _UserImage extends StatelessWidget {
  const _UserImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;

    return Expanded(
      flex: 1,
      child: CircleAvatar(
        backgroundImage: AssetImage(postData.author.image),
      ),
    );
  }
}

class _PostTimeStamp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Icon(
        Icons.favorite,
        color: Colors.pink,
        size: 24.0,
        semanticLabel: 'Text to announce in accessibility modes',
      ),
    );
  }
}
