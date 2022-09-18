import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Payload extends StatefulWidget {
  const Payload({Key? key}) : super(key: key);

  @override
  State<Payload> createState() => _PayloadState();
}

class _PayloadState extends State<Payload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ADCS'),),
      body: Text("Payload subsystem"),
    );
  }
}

