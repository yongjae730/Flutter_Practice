import 'package:flutter/material.dart';
import 'package:neflex_clone/model/model_movie.dart';
import 'package:neflex_clone/widget/box_slider.dart';
import 'package:neflex_clone/widget/carousel_slider.dart';
import 'package:neflex_clone/widget/circle_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      "title": '사랑의 불시착',
      "keyword": '사랑/로맨스/판타지',
      "poster": 'test_movie_1.png',
      "like": false,
    }),
    Movie.fromMap({
      "title": '사랑의 불시착',
      "keyword": '사랑/로맨스/판타지',
      "poster": 'test_movie_1.png',
      "like": false,
    }),
    Movie.fromMap({
      "title": '사랑의 불시착',
      "keyword": '사랑/로맨스/판타지',
      "poster": 'test_movie_1.png',
      "like": false,
    }),
    Movie.fromMap({
      "title": '사랑의 불시착',
      "keyword": '사랑/로맨스/판타지',
      "poster": 'test_movie_1.png',
      "like": false,
    }),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(movies),
            TopBar(),
          ],
        ),
        CircleSlider(movies: movies),
        BoxSlider(movies: movies),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(
                'images/bbongflix_logo.png',
                fit: BoxFit.contain,
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(right: 1),
                child: Text(
                  'TV 프로그램',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 1),
                child: Text(
                  '영화',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 1),
                child: Text(
                  '내가 찜한 콘텐츠',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ]));
  }
}
