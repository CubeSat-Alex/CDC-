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
  TextEditingController consumption = TextEditingController(text: "1");
  TextEditingController transfered = TextEditingController(text: "1");
  TextEditingController antenna = TextEditingController(text: "1");

  TextEditingController lifeTime = TextEditingController(text: "0");
  TextEditingController cost = TextEditingController(text: "0");
  // version2

  String ZERO = "LEO";
  String one = "CubeSAT";
  String size = "1U";
  String two = "Imager";
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
                                  width: 175,
                                ),
                                SizedBox(
                                  width: 500,
                                  child: DropdownButtonFormField(
                                      value: ZERO,
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
                                          child: Text("MEO"),
                                          value: "MEO",
                                        ),
                                        const DropdownMenuItem(
                                          child: Text("GEO"),
                                          value: "GEO",
                                        ),
                                        const DropdownMenuItem(
                                          child: Text("Elliptical"),
                                          value: "Elliptical",
                                        )
                                      ],
                                      onChanged: (value) {
                                        ZERO = value!;
                                        setState(() {});
                                      }),
                                )
                              ],
                            ),
                          ), //type of orbit .
                          Padding(
                            padding: const EdgeInsets.only(left: 120, top: 30),
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
                                          child: Text("PicoSAT"),
                                          value: "PicoSAT",
                                        ),
                                        const DropdownMenuItem(
                                          child: Text("FemtoSAT"),
                                          value: "FemtoSAT",
                                        ),
                                      ],
                                      onChanged: (value) {
                                        one = value!;
                                        setState(() {});
                                      }),
                                )
                              ],
                            ),
                          ), //type of satellite .
                          const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 120, top: 20),
                            child: Row(children: [
                              Text(
                                  " ${one == "CubeSAT" ? "Size of Cube : " : "Raduios of Can : "} ",
                                  style: TextStyle(
                                      color: Colors.white60,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              const SizedBox(
                                width: 150,
                              ),
                              one == "CubeSAT"
                                  ? Row(
                                      children: [
                                        Text("",
                                            style: TextStyle(
                                                color: Colors.white60,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20)),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        SizedBox(
                                          width: 200,
                                          child: DropdownButtonFormField(
                                              value: size,
                                              decoration: InputDecoration(
                                                  fillColor: Colors.white
                                                      .withOpacity(0.5),
                                                  filled: true,
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  )),
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15),
                                              items: [
                                                DropdownMenuItem(
                                                  child: Text("1U"),
                                                  value: "1U",
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("1.5U"),
                                                  value: "1.5U",
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("2U"),
                                                  value: "2U",
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("3U"),
                                                  value: "3U",
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("6U"),
                                                  value: "6U",
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("12U"),
                                                  value: "12U",
                                                ),
                                              ],
                                              onChanged: (value) {
                                                size = value!;
                                                setState(() {});
                                              }),
                                        )
                                      ],
                                    )
                                  : SizedBox(
                                      width: 150,
                                      child: NumericField(widthDimension),
                                    ),
                            ]),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 120),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text("Total Power Consumption : ",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: NumericField(consumption),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  const Text("MW ",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                ]),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 120),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text("Transfered RF Power : ",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  const SizedBox(
                                    width: 100,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: NumericField(transfered),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  const Text("MW ",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                ]),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 120),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text("Antenna Gain : ",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                  const SizedBox(
                                    width: 165,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: NumericField(antenna),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  const Text("db ",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                ]),
                          ),
                          const SizedBox(
                            height: 30,
                          ),

//////////////////////////////////////////////////////////////////////////////////////////////

                          Padding(
                            padding: const EdgeInsets.only(left: 120),
                            child: Row(
                              children: [
                                const Text("Payload mission : ",
                                    style: TextStyle(
                                        color: Colors.white60,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                const SizedBox(
                                  width: 140,
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
                                          child: Text("Imager"),
                                          value: "Imager",
                                        ),
                                        const DropdownMenuItem(
                                          child: Text("Communication"),
                                          value: "Communication",
                                        ),
                                        const DropdownMenuItem(
                                          child: Text("Weather"),
                                          value: "Weather",
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
                            height: 20,
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
                                        ),
                                        const DropdownMenuItem(
                                          child: Text("5kg < SAT < 10Kg"),
                                          value: "5kg < SAT < 10Kg",
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
                            height: 20,
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
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  const Text("years ",
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                ]),
                          ),
                          const SizedBox(
                            height: 20,
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
