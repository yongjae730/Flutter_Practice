import 'package:flutter/material.dart';
import 'package:neflex_clone/model/model_movie.dart';
import 'package:neflex_clone/screen/detail_screen.dart';

class CircleSlider extends StatelessWidget {
  final List<Movie> movies;

  const CircleSlider({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("미리보기"),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeCircleImages(context, movies),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeCircleImages(BuildContext context, List<Movie> movies) {
  List<Widget> results = [];
  for (var i = 0; i < movies.length; i++) {
    results.add(InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute<Null>(
              // 디테일 화면으로 이동
              fullscreenDialog: true,
              builder: (BuildContext context) {
                return DetailScreen(movie: movies[i]);
              }));
        },
        child: Container(
            padding: EdgeInsets.only(right: 10), // 오른쪽 패딩
            child: Align(
              alignment: Alignment.centerLeft, // 왼쪽 정렬
              child: CircleAvatar(
                // 원형 이미지 위젯
                radius: 50, // 원형 이미지의 반지름
                backgroundImage:
                    AssetImage("images/${movies[i].poster}"), // 이미지 경로
              ),
            ))));
  }
  return results;
}
