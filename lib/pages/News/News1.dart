import 'package:flutter/material.dart';

class News1 extends StatefulWidget {
  const News1({super.key});

  @override
  State<News1> createState() => _News1State();
}

class _News1State extends State<News1> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ListView(children: [Container()],)],
    );
  }
}
