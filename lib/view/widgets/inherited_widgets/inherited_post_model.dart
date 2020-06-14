import 'package:flutter/material.dart';
import 'package:leaf/model/post_model.dart';

class InheritedPostModel extends InheritedWidget {
  final PostModel postData;
  final Widget child;

  InheritedPostModel({
    Key key,
    @required this.postData, //this is what it'll take in
    this.child,
  }) : super(key: key, child: child);

  static InheritedPostModel of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<
        InheritedPostModel>()); //this is the updated version
  }

  @override
  bool updateShouldNotify(InheritedPostModel oldWidget) {
    return true;
  }
}
