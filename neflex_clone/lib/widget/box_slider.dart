import 'package:flutter/material.dart';
import 'package:neflex_clone/model/model_movie.dart';
import 'package:neflex_clone/screen/detail_screen.dart';

class BoxSlider extends StatelessWidget {
  final List<Movie> movies;

  const BoxSlider({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(7),
        // 컨테이너 위젯
        child: Column(
            // 열 위젯
            crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
            // 자식 위젯
            children: <Widget>[
              Text("지금 뜨는 콘텐츠"),
              SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: makeBoxImages(context, movies),
                  ))
            ]));
  }
}

List<Widget> makeBoxImages(BuildContext context, List<Movie> movies) {
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
        }, // 클릭 이벤트 처리
        child: Container(
            padding: EdgeInsets.only(right: 10), // 오른쪽 패딩
            child: Align(
                // 정렬 위젯
                alignment: Alignment.centerLeft, // 왼쪽 정렬
                child: SizedBox(
                  width: 100,
                  height: 180,
                  child: Image.asset(
                    "images/${movies[i].poster}",
                    fit: BoxFit.cover,
                  ),
                )))));
  }
  return results;
}
