import 'package:flutter/material.dart';
import '../Functions/numeric_field.dart';
import 'package:flutter_switch/flutter_switch.dart';

class OBC extends StatefulWidget {
  const OBC({Key? key}) : super(key: key);

  @override
  State<OBC> createState() => _OBCState();
}

class _OBCState extends State<OBC> {
  TextEditingController count = TextEditingController(text: "0");
  TextEditingController N = TextEditingController(text: "0");
  TextEditingController M = TextEditingController(text: "0");

  String controller = "Raspberry pi";
  String Served_Controller = "Arduino Uno";
  String transfer = "SPI";
  String time = "seconds";

  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("OBC")),
      body: Center(
        child: Container(
          width: 1300,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 120, top: 50),
                child: Row(
                  children: [
                    Text("On Board main Controller : ",
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
                          value: controller,
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
                              child: Text("Raspberry pi"),
                              value: "Raspberry pi",
                            ),
                            DropdownMenuItem(
                              child: Text("Lollipad"),
                              value: "Lollipad",
                            ),
                            DropdownMenuItem(
                              child: Text("ESP"),
                              value: "ESP",
                            ),
                            DropdownMenuItem(
                              child: Text("Arduino Uno"),
                              value: "Arduino Uno",
                            ),
                            DropdownMenuItem(
                              child: Text("ARM"),
                              value: "ARM",
                            ),
                            DropdownMenuItem(
                              child: Text("ATMEGA"),
                              value: "ATMEGA",
                            ),
                          ],
                          onChanged: (value) {
                            controller = value!;
                            setState(() {});
                          }),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 120, top: 50),
                child: Row(
                  children: [
                    Text("Subsystems Controller : ",
                        style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(
                      width: 110,
                    ),
                    SizedBox(
                      width: 500,
                      child: DropdownButtonFormField(
                          value: Served_Controller,
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
                              child: Text("Raspberry pi"),
                              value: "Raspberry pi",
                            ),
                            DropdownMenuItem(
                              child: Text("Lollipad"),
                              value: "Lollipad",
                            ),
                            DropdownMenuItem(
                              child: Text("ESP"),
                              value: "ESP",
                            ),
                            DropdownMenuItem(
                              child: Text("Arduino Uno"),
                              value: "Arduino Uno",
                            ),
                            DropdownMenuItem(
                              child: Text("ARM"),
                              value: "ARM",
                            ),
                            DropdownMenuItem(
                              child: Text("ATMEGA"),
                              value: "ATMEGA",
                            ),
                          ],
                          onChanged: (value) {
                            Served_Controller = value!;
                            setState(() {});
                          }),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    SizedBox(
                      width: 150,
                      child: NumericField(count),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 120, top: 50),
                child: Row(
                  children: [
                    Text("Data Transfer Protocol : ",
                        style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(
                      width: 105,
                    ),
                    SizedBox(
                      width: 500,
                      child: DropdownButtonFormField(
                          value: transfer,
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
                            transfer = value!;
                            setState(() {});
                          }),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                child: Padding(
                  padding: EdgeInsets.only(left: 120, top: 50),
                  child: Row(children: [
                    Text("Number of Readings per Time : ",
                        style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(
                      width: 50,
                    ),
                    Text("N  ",
                        style: TextStyle(
                            color: Colors.red,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(
                      width: 150,
                      child: NumericField(N),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Text(" M ",
                        style: TextStyle(
                            color: Colors.red,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 22)),
                    SizedBox(
                      width: 150,
                      child: NumericField(M),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 120,
                      child: DropdownButtonFormField(
                          value: time,
                          decoration: InputDecoration(
                              fillColor: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.1),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          style: TextStyle(color: Colors.black, fontSize: 15),
                          items: [
                            DropdownMenuItem(
                              child: Text("seconds"),
                              value: "seconds",
                            ),
                            DropdownMenuItem(
                              child: Text("minute"),
                              value: "minute",
                            ),
                            DropdownMenuItem(
                              child: Text("hour"),
                              value: "hour",
                            ),
                          ],
                          onChanged: (value) {
                            time = value!;
                            setState(() {});
                          }),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 120, top: 50),
                child: Row(
                  children: [
                    Text("Remote Terminal Unit (RIU)  ",
                        style: TextStyle(
                            color: Colors.black,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    SizedBox(
                      width: 70,
                    ),
                    FlutterSwitch(
                      width: 125.0,
                      height: 50,
                      valueFontSize: 25.0,
                      toggleSize: 45.0,
                      value: status,
                      borderRadius: 30.0,
                      padding: 8.0,
                      showOnOff: true,
                      onToggle: (val) {
                        setState(() {
                          status = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 300),
                    fixedSize: const Size(300, 40),
                    maximumSize: const Size(300, 75),
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.black54)),
                    backgroundColor: Colors.white60,
                  ),
                  onPressed: () {
                    print("OBC");
                    showAlertDialog(context);
                    // Navigator.of(context).pop();
                    setState(() {});
                  },
                  child: const Text(
                    "Confirm",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
            ],
          ),
        ),
      ),
    );
  }
  showAlertDialog(BuildContext context) {

    // set up the button
    Widget okButton = TextButton(
      child: const Text("Got it"),
      onPressed: () { Navigator.pop(context);},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Warning"),
      content: const Text("raspberry bi has only 2 UART port"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
