import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:neflex_clone/model/model_movie.dart';

class DetailScreen extends StatefulWidget {
  final Movie movie;

  const DetailScreen({super.key, required this.movie});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool like = false;

  @override
  void initState() {
    // 초기화 메서드
    super.initState(); // 부모 클래스의 initState 메서드 호출
    like = widget.movie.like; // 초기 상태 설정
  }

  @override
  Widget build(BuildContext context) {
    // 위젯 생성 메서드
    return Scaffold(
        // 스크롤 위젯
        body: Container(
            // 컨테이너 위젯
            child: SafeArea(
                // 안전 영역 위젯
                child: ListView(
      children: <Widget>[
        Stack(children: <Widget>[
          Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/${widget.movie.poster}"),
                      fit: BoxFit.cover)),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10,
                    sigmaY: 10,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.black.withAlpha(25),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 45, 0, 10),
                            height: 300,
                            child: Image.asset("images/${widget.movie.poster}"),
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            child: Text(
                              "99% 일치 2019 15+ 시즌 1개",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            child: Text(
                              widget.movie.title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                  ),
                                  Text("재생"),
                                ],
                              ),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.all(7),
                              child: Text(widget.movie.toString())),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '출연 : 현빈, 손예진, 서지혜 \n 제작자: 이정효, 박지은',
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )),
          Positioned(
              child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ))
        ]),
        Container(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    children: <Widget>[
                      like ? Icon(Icons.check) : Icon(Icons.add),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        "내가 찜한 콘텐츠",
                        style: TextStyle(fontSize: 11, color: Colors.white60),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Icon(Icons.thumb_up),
                    Padding(padding: EdgeInsets.all(5)),
                    Text(
                      "평가",
                      style: TextStyle(fontSize: 11, color: Colors.white60),
                    )
                  ],
                )),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.send),
                    Padding(
                      padding: EdgeInsets.all(5),
                    ),
                    Text(
                      "공유",
                      style: TextStyle(fontSize: 11, color: Colors.white60),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ))));
  }
}

Widget makeMenuButton() {
  return Container();
}
