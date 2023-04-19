import 'package:flutter/material.dart';
import 'package:inheritance/my_widget.dart';

import 'my_widget_child.dart';

class ShowText extends MyWidgetChild {
  const ShowText(this.title, {super.key});
  final String title;
  @override
  State<MyWidget> createState() => _ShowTextState();
}

class _ShowTextState extends State<ShowText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style: const TextStyle(color: Colors.white),
    );
  }
}
