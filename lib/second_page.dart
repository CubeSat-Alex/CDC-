import 'package:cdc_project/Tabs/ADCS.dart';
import 'package:cdc_project/Tabs/EPS.dart';
import 'package:cdc_project/Tabs/Payload.dart';
import 'package:cdc_project/Tabs/communication.dart';
import 'package:flutter/material.dart';
import 'Functions/navigation_functions.dart';
import 'Tabs/OBC.dart';

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  State<TabView> createState() => _TabViewState();
}

// const List<String> appBarTitles = [
//   "OBC",
//   "Payload",
//   "Communication",
//   "ADCS",
//   "Power",
// ];

class _TabViewState extends State<TabView> {
  List<User> users = [
    User('Menam', '123456'),
    User('Ahmed', '12356'),
    User('absalam', '12356'),
    User('sale7', '12356'),
    User('3sam', '12356'),
  ];

  List<bool> selected = List.filled(5, false);
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  ScrollController controller = ScrollController();
  bool Clicked = true;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 15,
        elevation: 0,
        foregroundColor: Colors.blue,
        backgroundColor: Colors.white,
        title: const Text('LOGIN'),
      ),
      // bottomNavigationBar: bottomNavigationBar(value, context),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Scrollbar(
            controller: controller,
            child: SingleChildScrollView(
              controller: controller,
              scrollDirection: Axis.horizontal,
              child: ToggleButtons(
                onPressed: (sel) {
                  setState(() {
                    selected = List.filled(5, false);
                    selected[sel] = true;
                  });
                },
                isSelected: selected,
                children: List.generate(
                    5,
                    (index) => SizedBox(
                          width: 250,
                          height: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                [
                                  Icons.computer,
                                  Icons.network_check_outlined,
                                  Icons.engineering,
                                  Icons.camera,
                                  Icons.solar_power,
                                ][index],
                                size: 100,
                              ),
                              Text(
                                  [
                                    'OBC',
                                    'Communication',
                                    'ADCS',
                                    'Payload',
                                    'Power'
                                  ][index],
                                  style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        )),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(
                  width: 500,
                  child: TextFormField(
                    controller: userController,
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: Colors.black,
                        ),
                    validator: (text) {
                      int value =
                          selected.indexWhere((element) => element == true);
                      return users[value].checkName(text!)
                          ? null
                          : "right name is ${users[value].name}";
                    },
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      labelText: 'User Name',
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        // color: Theme.of(context).colorScheme.onSecondary,
                      ),
                      contentPadding: const EdgeInsets.all(20),
                      errorStyle: const TextStyle(fontSize: 12),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor, width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 500,
                  child: TextFormField(
                    controller: passController,
                    obscureText: Clicked,
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: Colors.black,
                        ),
                    textAlign: TextAlign.center,
                    validator: (text) {
                      int value =
                          selected.indexWhere((element) => element == true);
                      return users[value].checkPass(text!)
                          ? null
                          : "right password is ${users[value].pass}";
                    },
                    // CONDITION ? (True) : (false)
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                            Clicked ? Icons.lock_open : Icons.lock_outline),
                        onPressed: () {
                          Clicked = !Clicked;
                          setState(() {});
                        },
                      ),
                      labelText: 'Password',
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        // color: Theme.of(context).colorScheme.onSecondary,
                      ),
                      contentPadding: const EdgeInsets.all(20),
                      errorStyle: const TextStyle(fontSize: 12),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor, width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        fixedSize:
                            MaterialStateProperty.all(const Size(500, 40))),
                    onPressed: confirmClick,
                    child: const Text('Confirm')),
              ],
            ),
          )
        ]),
      ),
    );
  }

  void confirmClick() {
    int value = selected.indexWhere((element) => element == true);
    List subsystems = [
      const OBC(),
      const communication(),
      const ADCS(),
      const Payload(),
      const EPS(),
    ];
    if (formKey.currentState!.validate()) {
      if (users[value].checkUser(userController.text, passController.text)) {
        navigateAndPush(context, subsystems[value]);
      }
    }

    int selectedIndex = selected.indexWhere((element) => element == true);
    if (selectedIndex != -1) {
    } else {
      // please select
    }
  }
}

class User {
  String name;
  String pass;

  User(this.name, this.pass);

  bool checkName(String name) => name == this.name;
  bool checkPass(String pass) => pass == this.pass;

  bool checkUser(String name, String pass) =>
      checkName(name) && checkPass(pass);
}
