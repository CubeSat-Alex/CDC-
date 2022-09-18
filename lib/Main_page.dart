import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  TextEditingController nameCoontroller = TextEditingController(text: "");
  TextEditingController emailCoontroller = TextEditingController(text: "");

  String one = "Cairo";
  String two = "kg";

  String text = "hi";

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
        title: "App title",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text("created by absalam"),
              leading: const Icon(Icons.person_add),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                      controller: nameCoontroller,
                      decoration: InputDecoration(
                          label: const Text("Name"),
                          suffixIcon: DropdownButton<String>(
                            value: one,
                            items: const [
                              DropdownMenuItem(
                                child: Text("Cubasat"),
                                value: "Cubasat",
                              ),
                              DropdownMenuItem(
                                child: Text("Cairo"),
                                value: "Cairo",
                              ),
                              DropdownMenuItem(
                                child: Text("Aswan"),
                                value: "Aswan",
                              )
                            ],
                            onChanged: (value) {
                              one = value!;
                              setState(  () {}   );
                            } ,

                          ),
                          border: const OutlineInputBorder())),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      controller: emailCoontroller,
                      decoration: InputDecoration(
                          label: const Text("email"),
                          prefixIcon: IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              emailCoontroller.text =
                                  (int.parse(emailCoontroller.text) - 1)
                                      .toString();
                            },
                          ),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              emailCoontroller.text =
                                  (int.parse(emailCoontroller.text) + 1)
                                      .toString();
                            },
                          ),
                          border: const OutlineInputBorder())),
                  const SizedBox(
                    height: 20,
                  ),
                  DropdownButton<String>(
                      value: two,
                      borderRadius:BorderRadius.circular(25) ,
                      dropdownColor: Colors.red,
                      style: Theme.of(context).textTheme.titleLarge,
                      items: const [
                        DropdownMenuItem(
                          child: Text("cm"),
                          value: "cm",
                        ),
                        DropdownMenuItem(
                          child: Text("meter"),
                          value: "meter",
                        ),
                        DropdownMenuItem(
                          child: Text("kg"),
                          value: "kg",
                        )
                      ],
                      onChanged: (value) {
                        two = value!;
                        setState(  () {}   );
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  OutlinedButton.icon(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        print(one);
                        print(nameCoontroller.text);
                      },
                      label: const Text("Button")),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("$text iam abdelsalam"),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            print(text);
                            if (text == "hi") {
                              text = "bey";
                            } else {
                              text = "hi";
                            }
                            setState(() {});
                          },
                          child: const Text("click me"))
                    ],
                  )
                ],
              ),
            )));
  }
}
