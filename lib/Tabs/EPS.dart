import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EPS extends StatefulWidget {
  const EPS({Key? key}) : super(key: key);

  @override
  State<EPS> createState() => _EPSState();
}

class _EPSState extends State<EPS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('EPS'),),
      body: Text("eps"),
    );
  }
}
