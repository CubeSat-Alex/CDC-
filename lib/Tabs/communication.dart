import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Functions/numeric_field.dart';

class communication extends StatefulWidget {
  const communication({Key? key}) : super(key: key);

  @override
  State<communication> createState() => _communicationState();
}

class _communicationState extends State<communication> {

  TextEditingController FROM = TextEditingController(text: "0");
  TextEditingController TO = TextEditingController(text: "0");
  TextEditingController ips = TextEditingController(text: "0");
  TextEditingController antenna = TextEditingController(text: "0");


  String one = "RF Band";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Communication'),),
      body: Center(
        child: Container(
          width: 1100,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 120, top: 50),
                child: Row(
                  children: [
                    Text("Select Band Limitation : ",
                        style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(
                      width: 70,
                    ),
                    SizedBox(
                      width: 500,
                      child: DropdownButtonFormField(
                          value: one,
                          decoration: InputDecoration(
                              fillColor: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.5),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          style: TextStyle(color: Colors.black, fontSize: 15),
                          items: [
                            DropdownMenuItem(
                              child: Text("RF Band"),
                              value: "RF Band",
                            ),
                            DropdownMenuItem(
                              child: Text("S-Band"),
                              value: "S-Band",
                            ),
                            DropdownMenuItem(
                              child: Text("C-Band"),
                              value: "C-Band",
                            ),
                            DropdownMenuItem(
                              child: Text("KU Band and ka band"),
                              value: "KU Band and ka band",
                            ),
                          ],
                          onChanged: (value) {
                            one = value!;
                            setState(() {});
                          }),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                child: Padding(
                  padding: EdgeInsets.only(left: 120,top: 50),
                  child: Row(children: [
                    Text("number of A ntenna's :",
                        style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(
                      width: 95,
                    ),
                    SizedBox(
                      width: 150,
                      child: NumericField(antenna),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 100,
                child: Padding(
                  padding: EdgeInsets.only(left: 120,top: 50),
                  child: Row(children: [
                    Text("RF Recieved BW : ",
                        style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(
                      width: 150,
                    ),
                    SizedBox(
                      width: 150,
                      child: NumericField(ips),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 100,
                child: Padding(
                  padding: EdgeInsets.only(left: 120,top: 50),
                  child: Row(children: [
                    Text("Power Usage : ",
                        style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(
                      width: 100,
                    ),
                    Text("From :  ",
                        style: TextStyle(
                            color: Colors.red,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(
                      width: 150,
                      child: NumericField(FROM),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(" TO : ",
                        style: TextStyle(
                            color: Colors.red,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 22)),
                    SizedBox(
                      width: 150,
                      child: NumericField(TO),
                    ),
                  ]),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
