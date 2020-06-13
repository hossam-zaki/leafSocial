import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leaf"),
      ),
      body: ListView.builder(
          itemCount: 5, //# of widges to built
          itemBuilder: (BuildContext context, int index) {
            //function to build that type of widget
            return PostCard();
          }),
    );
  }
}
