import 'package:flutter/material.dart';

class NumericField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String value)? onChange;
  final String? title;
  const NumericField(this.controller, {this.title, this.onChange, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Colors.white.withOpacity(0.5),
      ),
      child: TextFormField(
        controller: controller,
        onChanged: (val) => onChange,
        keyboardType: TextInputType.number,
        validator: (value) {
          if (value!.isEmpty) {
            return "cannot be empty";
          } else {
            double isDigitsOnly = double.tryParse(value) ?? 0;
            return isDigitsOnly == 0 ? 'Numbers only' : null;
          }
        },
        style: Theme.of(context).textTheme.button!.copyWith(
              color: Colors.black,
            ),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          labelText: title,
          labelStyle: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
          contentPadding: const EdgeInsets.all(0.0),
          errorStyle: const TextStyle(fontSize: 12),
          errorBorder: InputBorder.none,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black54, width: 1.0),
            borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon: IconButton(
            iconSize: 20,
            icon: const Icon(
              Icons.remove,
              color: Colors.black,
            ),
            onPressed: () {
              double d = double.parse(controller.text);
              if (d > 1) {
                d--;
                if (onChange != null) {
                  onChange!("$d");
                }
                controller.text = "$d";
              }
            },
          ),
          suffixIcon: IconButton(
            iconSize: 20,
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
            onPressed: () {
              double d = double.parse(controller.text);
              d++;
              if (onChange != null) {
                onChange!("$d");
              }
              controller.text = "$d";
            },
          ),
        ),
      ),
    );
  }
}
