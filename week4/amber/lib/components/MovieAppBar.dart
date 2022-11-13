import 'package:flutter/material.dart';

class MovieAppBar extends StatelessWidget {
  const MovieAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomCenter,
                colors: [
              Colors.black.withAlpha(200),
              Colors.black.withAlpha(0)
            ])),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Expanded(
                child: Text(
              "영화",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
            )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            Container(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.account_box,
                  color: Colors.white,
                ))
          ],
        ));
  }
}
