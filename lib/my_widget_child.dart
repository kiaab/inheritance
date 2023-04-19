import 'package:flutter/material.dart';
import 'package:inheritance/my_widget.dart';
import 'package:inheritance/show_title.dart';

class MyWidgetChild extends MyWidget {
  const MyWidgetChild({
    super.key,
  });

  @override
  State<MyWidget> createState() {
    return _MyHomePageChildState();
  }
}

class _MyHomePageChildState extends State<MyWidgetChild> {
  Color color = Colors.black;
  String title = 'hi black';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              color = Colors.blue;
              title = 'hi blue';
            });
          },
          child: Container(
            alignment: Alignment.center,
            color: color,
            height: 60,
            width: 60,
            child: ShowText(title),
          ),
        ),
      ),
    );
  }
}
