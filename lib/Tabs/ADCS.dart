import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ADCS extends StatefulWidget {
  const ADCS({Key? key}) : super(key: key);

  @override
  State<ADCS> createState() => _ADCSState();
}

class _ADCSState extends State<ADCS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ADCS'),),
      body: const Text('ADCS'),
    );
  }
}
