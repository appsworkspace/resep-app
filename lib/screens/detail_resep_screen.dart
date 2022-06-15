import 'package:flutter/material.dart';

class DetailResepScreen extends StatefulWidget {
  final String? title;
  const DetailResepScreen({this.title, Key? key}) : super(key: key);

  @override
  State<DetailResepScreen> createState() => _DetailResepScreenState();
}

class _DetailResepScreenState extends State<DetailResepScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
    );
  }
}
