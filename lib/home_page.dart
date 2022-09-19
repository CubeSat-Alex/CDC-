import 'package:cdc_project/second_page.dart';
import 'package:flutter/material.dart';
import 'Functions/navigation_functions.dart';
import 'Functions/numeric_field.dart';
import 'class/general.dart';
import 'class/pdf.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  General data = General();
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController canRadius = TextEditingController(text: "1");
  TextEditingController heightDimension = TextEditingController(text: "1");
  TextEditingController consumption = TextEditingController(text: "1");
  TextEditingController transfered = TextEditingController(text: "1");
  TextEditingController antenna = TextEditingController(text: "1");
  TextEditingController lifeTime = TextEditingController(text: "0");
  TextEditingController cost = TextEditingController(text: "0");


  String orbitSelector = "LEO";
  String sateTypeSelector = "CubeSAT";
  String sateSize = "1U";
  String payloadSelector = "Imager";
  String weightSelector = "1kg";

  void onclick()  {
    PDF pdf = PDF(widget.data);
    pdf.export();
  }

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
          floatingActionButton: FloatingActionButton(
            onPressed: onclick,
            child: const Text('Test PDF'),
          ),
          appBar: AppBar(
            title: const Text("EGSA CDC"),
            elevation: 0,
            foregroundColor: Colors.white,
            backgroundColor: Colors.transparent, //.withOpacity(0.1),
            leading: const Icon(Icons.satellite_alt_outlined),
          ),
          body: Center(
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
                                    value: orbitSelector,
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
                                    items: const [
                                      DropdownMenuItem(
                                        value: "LEO",
                                        child: Text("LEO"),
                                      ),
                                      DropdownMenuItem(
                                        value: "MEO",
                                        child: Text("MEO"),
                                      ),
                                      DropdownMenuItem(
                                        value: "GEO",
                                        child: Text("GEO"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Elliptical",
                                        child: Text("Elliptical"),
                                      )
                                    ],
                                    onChanged: (value) {
                                      orbitSelector = value!;
                                      widget.data.orbitType = orbitSelector;
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
                                    value: sateTypeSelector,
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
                                    items: const [
                                      DropdownMenuItem(
                                        value: "CubeSAT",
                                        child: Text("CubeSAT"),
                                      ),
                                      DropdownMenuItem(
                                        value: "CanSAT",
                                        child: Text("CanSAT"),
                                      ),
                                      DropdownMenuItem(
                                        value: "PicoSAT",
                                        child: Text("PicoSAT"),
                                      ),
                                      DropdownMenuItem(
                                        value: "FemtoSAT",
                                        child: Text("FemtoSAT"),
                                      ),
                                    ],
                                    onChanged: (value) {
                                      sateTypeSelector = value!;
                                      widget.data.satType = sateTypeSelector;
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
                                " ${sateTypeSelector == "CubeSAT" ? "Size of Cube : " : "Raduios of Can : "} ",
                                style: const TextStyle(
                                    color: Colors.white60,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            const SizedBox(
                              width: 150,
                            ),
                            sateTypeSelector == "CubeSAT"
                                ? Row(
                                    children: [
                                      const Text("",
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20)),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 200,
                                        child: DropdownButtonFormField(
                                            value: sateSize,
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
                                            items: const [
                                              DropdownMenuItem(
                                                value: "1U",
                                                child: Text("1U"),
                                              ),
                                              DropdownMenuItem(
                                                value: "1.5U",
                                                child: Text("1.5U"),
                                              ),
                                              DropdownMenuItem(
                                                value: "2U",
                                                child: Text("2U"),
                                              ),
                                              DropdownMenuItem(
                                                value: "3U",
                                                child: Text("3U"),
                                              ),
                                              DropdownMenuItem(
                                                value: "6U",
                                                child: Text("6U"),
                                              ),
                                              DropdownMenuItem(
                                                value: "12U",
                                                child: Text("12U"),
                                              ),
                                            ],
                                            onChanged: (value) {
                                              sateSize = value!;
                                              widget.data.unitsSize = sateSize;
                                              setState(() {});
                                            }),
                                      )
                                    ],
                                  )
                                : SizedBox(
                                    width: 150,
                                    child: NumericField(canRadius, onChange: (val){widget.data.canRadius = double.parse(val).toInt();},),
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
                                  child: NumericField(consumption, onChange: (val){widget.data.powerConsumption = double.parse(val).toInt();},),
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
                                  child: NumericField(transfered, onChange: (val){widget.data.rfPower = double.parse(val).toInt();}),
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
                                  child: NumericField(antenna, onChange: (val){widget.data.gain = double.parse(val).toInt();}),
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
                                    value: payloadSelector,
                                    decoration: InputDecoration(
                                        fillColor:
                                            Colors.white.withOpacity(0.5),
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15))),
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 15),
                                    items: const [
                                      DropdownMenuItem(
                                        value: "Imager",
                                        child: Text("Imager"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Communication",
                                        child: Text("Communication"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Weather",
                                        child: Text("Weather"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Remote Sensing",
                                        child: Text("Remote Sensing"),
                                      ),
                                    ],
                                    onChanged: (value) {
                                      payloadSelector = value!;
                                      widget.data.payloadMission = payloadSelector;
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
                                    value: weightSelector,
                                    decoration: InputDecoration(
                                        fillColor:
                                            Colors.white.withOpacity(0.5),
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15))),
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 15),
                                    items: const [
                                      DropdownMenuItem(
                                        value: "500g",
                                        child: Text("500g"),
                                      ),
                                      DropdownMenuItem(
                                        value: "1kg",
                                        child: Text("1kg"),
                                      ),
                                      DropdownMenuItem(
                                        value: "1kg < SAT < 5Kg",
                                        child: Text("1kg < SAT < 5Kg"),
                                      ),
                                      DropdownMenuItem(
                                        value: "5kg < SAT < 10Kg",
                                        child: Text("5kg < SAT < 10Kg"),
                                      )
                                    ],
                                    onChanged: (value) {
                                      weightSelector = value!;
                                      widget.data.weight = weightSelector;
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
                                  child: NumericField(lifeTime, onChange: (val){
                                    widget.data.lifeTime = double.parse(val).toInt();

                                  }),
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
                              child: NumericField(cost, onChange: (val){widget.data.cost = double.parse(val).toInt();}),
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
                                    side: const BorderSide(color: Colors.black54)),
                                backgroundColor: Colors.white60,
                              ),
                              onPressed: () {
                                print("Done");
                                navigateAndPush(context, TabView(widget.data));
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
          )),
    );
  }
}
