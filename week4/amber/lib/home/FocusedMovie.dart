import 'package:amber/components/IconTextButton.dart';
import 'package:flutter/material.dart';

class FocusedMovie extends StatelessWidget {
  const FocusedMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter, children: [
      AspectRatio(
          aspectRatio: 0.8,
          child: Image(
            image: AssetImage("assets/movie1.jpeg"),
            fit: BoxFit.cover,
          )),
      Container(
        height: 120,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.bottomCenter,
                end: AlignmentDirectional.topCenter,
                colors: [Colors.black, Colors.black.withAlpha(0)])),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Visibility(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                Icons.ondemand_video,
                color: Colors.red,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "오늘 영화 순위 9위",
                style: TextStyle(color: Colors.white),
              )
            ]),
            visible: true,
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Flexible(
                  fit: FlexFit.tight,
                  child: IconTextButton(icon: Icons.add, text: "내가 찜한 콘텐츠")),
              SizedBox(
                width: 10,
              ),
              InkWell(
                  onTap: () {},
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      height: 32,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.play_arrow),
                          SizedBox(
                            width: 8,
                          ),
                          Text("재생")
                        ],
                      ))),
              SizedBox(
                width: 10,
              ),
              Flexible(
                  fit: FlexFit.tight,
                  child: IconTextButton(icon: Icons.info_outline, text: "정보"))
            ],
          )
        ],
      )
    ]);
  }
}
