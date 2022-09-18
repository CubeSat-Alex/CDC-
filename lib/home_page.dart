import 'package:cdc_project/second_page.dart';
import 'package:flutter/material.dart';

import 'Functions/navigation_functions.dart';
import 'Functions/numeric_field.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController widthDimension = TextEditingController(text: "1");
  TextEditingController heightDimension = TextEditingController(text: "1");
  TextEditingController lifeTime = TextEditingController(text: "0");
  TextEditingController cost = TextEditingController(text: "0");

  String one = "CubeSAT";
  String two = "Payload";
  String three = "1kg";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assests/images/back.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text("EGSA CDC"),
            elevation: 0,
            foregroundColor: Colors.white,
            backgroundColor: Colors.transparent, //.withOpacity(0.1),
            leading: const Icon(Icons.satellite_alt_outlined),
          ),
          body: Container(
            child: Center(
              child: SizedBox(
                width: 1100,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(5)),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 120, top: 50),
                            child: Row(
                              children: [
                                const Text("Type of Orbit : ",
                                    style: TextStyle(
                                        color: Colors.white60,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                const SizedBox(
                                  width: 70,
                                ),
                                SizedBox(
                                  width: 500,
                                  child: DropdownButtonFormField(
                                      value: one,
                                      decoration: InputDecoration(
                                          fillColor:
                                              Colors.white.withOpacity(0.5),
                                          filled: true,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          )),
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 15),
                                      items: [
                                        const DropdownMenuItem(
                                          child: Text("LEO"),
                                          value: "LEO",
                                        ),
                                        const DropdownMenuItem(
                                          child: Text("CanSAT"),
                                          value: "CanSAT",
                                        ),
                                        const DropdownMenuItem(
                                          child: Text("SiriSAT"),
                                          value: "SiriSAT",
                                        )
                                      ],
                                      onChanged: (value) {
                                        one = value!;
                                        setState(() {});
                                      }),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 120, top: 50),
                            child: Row(
                              children: [
                                const Text("Select Type of Satellite : ",
                                    style: TextStyle(
                                        color: Colors.white60,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                const SizedBox(
                                  width: 70,
                                ),
                                SizedBox(
                                  width: 500,
                                  child: DropdownButtonFormField(
                                      value: one,
                                      decoration: InputDecoration(
                                          fillColor:
                                              Colors.white.withOpacity(0.5),
                                          filled: true,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          )),
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 15),
                                      items: [
                                        const DropdownMenuItem(
                                          child: Text("CubeSAT"),
                                          value: "CubeSAT",
                                        ),
                                        const DropdownMenuItem(
                                          child: Text("CanSAT"),
                                          value: "CanSAT",
                                        ),
                                        const DropdownMenuItem(
                                          child: Text("SiriSAT"),
                                          value: "SiriSAT",
                                        )
                                      ],
                                      onChanged: (value) {
                                        one = value!;
                                        setState(() {});
                                      }),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 120, top: 50),
                            child: Row(children: [
                              const Text("Enter your Dimensions : ",
                                  style: TextStyle(
                                      color: Colors.white60,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              const SizedBox(
                                width: 70,
                              ),
                              SizedBox(
                                width: 150,
                                child: NumericField(widthDimension),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              const Text("X",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22)),
                              const SizedBox(
                                width: 40,
                              ),
                              SizedBox(
                                width: 150,
                                child: NumericField(heightDimension),
                              ),
                            ]),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 120),
                            child: Row(
                              children: [
                                const Text("mission of Satellite : ",
                                    style: TextStyle(
                                        color: Colors.white60,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                const SizedBox(
                                  width: 110,
                                ),
                                SizedBox(
                                  width: 500,
                                  child: DropdownButtonFormField(
                                      value: two,
                                      decoration: InputDecoration(
                                          fillColor:
                                              Colors.white.withOpacity(0.5),
                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15))),
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 15),
                                      items: [
                                        const DropdownMenuItem(
                                          child: Text("Payload"),
                                          value: "Payload",
                                        ),
                                        const DropdownMenuItem(
                                          child: Text("Remote Sensing"),
                                          value: "Remote Sensing",
                                        ),
                                      ],
                                      onChanged: (value) {
                                        two = value!;
                                        setState(() {});
                                      }),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 120),
                            child: Row(
                              children: [
                                const Text("Select weight of Satellite : ",
                                    style: TextStyle(
                                        color: Colors.white60,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                const SizedBox(
                                  width: 50,
                                ),
                                SizedBox(
                                  width: 500,
                                  child: DropdownButtonFormField(
                                      value: three,
                                      decoration: InputDecoration(
                                          fillColor:
                                              Colors.white.withOpacity(0.5),
                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15))),
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 15),
                                      items: [
                                        const DropdownMenuItem(
                                          child: Text("500g"),
                                          value: "500g",
                                        ),
                                        const DropdownMenuItem(
                                          child: Text("1kg"),
                                          value: "1kg",
                                        ),
                                        const DropdownMenuItem(
                                          child: Text("1kg < SAT < 5Kg"),
                                          value: "1kg < SAT < 5Kg",
                                        )
                                      ],
                                      onChanged: (value) {
                                        three = value!;
                                        setState(() {});
                                      }),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 120),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text("Life time OF SAT : ",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  const SizedBox(
                                    width: 150,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: NumericField(lifeTime),
                                  ),
                                ]),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 120),
                            child: Row(children: [
                              const Text("Cost OF SAT : ",
                                  style: TextStyle(
                                      color: Colors.white60,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              const SizedBox(
                                width: 200,
                              ),
                              SizedBox(
                                width: 150,
                                child: NumericField(cost),
                              ),
                            ]),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 400),
                            child: ElevatedButton(
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
                                  print("Done");
                                  navigateAndPush(context, const TabView());
                                  setState(() {});
                                },
                                child: const Text(
                                  "Confirm",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
