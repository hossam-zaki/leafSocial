import 'package:leaf/model/post_model.dart';
import 'package:leaf/model/user_model.dart';

class DemoValues {
  static final List<UserModel> users = [
    UserModel(
        id: "1",
        name: "Hossam",
        email: "hossam@loop.com",
        followers: 356,
        joined: DateTime(2020, 6, 6),
        image: "assets/images/profile.jpg",
        posts: 12),
    UserModel(
        id: "2",
        name: "Matteo",
        email: "matteo@loop.com",
        followers: 123,
        joined: DateTime(2020, 5, 5),
        image: "assets/images/profile.jpg",
        posts: 12),
    UserModel(
        id: "3",
        name: "namik",
        email: "namik@loop.com",
        followers: 331,
        joined: DateTime(2020, 5, 5),
        image: "assets/images/profile.jpg",
        posts: 12),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "1",
      author: users[0],
      title: "Liverpool da goat",
      summary: "Liverpool is the best club in the world",
      body: "This is the body...",
      imageURL: "assets/images/test.JPG",
      postTime: DateTime(2019, 6, 29),
      reacts: 123,
      views: 456,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Inter lost today :(",
      summary: "Inter is trash boys...",
      body: "Inter lost to friggin napoli today. Im so mad",
      imageURL: "assets/images/awef.jpg",
      postTime: DateTime(2019, 6, 29),
      reacts: 415,
      views: 123,
    ),
    PostModel(
      id: "3",
      author: users[2],
      title: "Mans just chillin in baku",
      summary: "Baku is gang",
      body: "Im just chillin in baku bruv",
      imageURL: "assets/images/awef.jpg",
      postTime: DateTime(2019, 6, 29),
      reacts: 132,
      views: 511,
    ),
  ];
}
