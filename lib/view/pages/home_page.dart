import 'package:flutter/material.dart';
import 'package:leaf/helper/demo_values.dart';
import 'package:leaf/view/widgets/post_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leaf"),
      ),
      body: ListView.builder(
          itemCount: DemoValues.posts.length, //# of widges to built
          itemBuilder: (BuildContext context, int index) {
            //function to build that type of widget
            return Container(
              child: PostCard(postData: DemoValues.posts[index]),
              height: MediaQuery.of(context).size.height,
            );
          }),
    );
  }
}
