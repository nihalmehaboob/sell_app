import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/homepage.dart';

class eachpage extends StatelessWidget {
  const eachpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Center(
                child: Text(
              "jyfadjtfhajfdkasfkuafsgkufafakfag",
              style: TextStyle(fontSize: 20, color: Colors.amber),
            )),
            height: 400,
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.purple),
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  Icon(
                    Icons.star_border,
                  ),
                  Text(
                    "LIKE IT",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.purple),
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  Icon(
                    Icons.share,
                  ),
                  Text(
                    "SHARE IT",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.purple),
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  Icon(
                    Icons.comment,
                  ),
                  Text(
                    "COMMENT IT",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
