import 'package:cdc_project/Functions/navigation_functions.dart';
import 'package:flutter/material.dart';

import '../Functions/numeric_field.dart';


class OBC extends StatefulWidget {
  const OBC({Key? key}) : super(key: key);

  @override
  State<OBC> createState() => _OBCState();
}

class _OBCState extends State<OBC> {

  TextEditingController FROM = TextEditingController(text: "0");
  TextEditingController TO = TextEditingController(text: "0");
  TextEditingController ips = TextEditingController(text: "0");
  TextEditingController input = TextEditingController(text: "0");
  TextEditingController output = TextEditingController(text: "0");


  String one = "SPI";
  // String two = "Payload";
  // String three = "1kg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: 1100,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 120, top: 50),
                child: Row(
                  children: [
                    Text("Type of Data Tranfered : ",
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
                              child: Text("SPI"),
                              value: "SPI",
                            ),
                            DropdownMenuItem(
                              child: Text("UART"),
                              value: "UART",
                            ),
                            DropdownMenuItem(
                              child: Text("I2C"),
                              value: "I2C",
                            ),
                            DropdownMenuItem(
                              child: Text("CAN"),
                              value: "CAN",
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
                    Text("Power Usage : ",
                        style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(
                      width: 120,
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
              SizedBox(
                height: 100,
                child: Padding(
                  padding: EdgeInsets.only(left: 120,top: 50),
                  child: Row(children: [
                    Text("median IPS : ",
                        style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(
                      width: 220,
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
                  padding: EdgeInsets.only(left: 120),
                  child: Row(children: [
                    Text("number of input ports : ",
                        style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(
                      width: 100,
                    ),
                    SizedBox(
                      width: 150,
                      child: NumericField(input),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 100,
                child: Padding(
                  padding: EdgeInsets.only(left: 120),
                  child: Row(children: [
                    Text("number of output ports : ",
                        style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(
                      width: 90,
                    ),
                    SizedBox(
                      width: 150,
                      child: NumericField(output),
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

