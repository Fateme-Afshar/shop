import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String hint;
  final Key textFieldKey;
  final TextEditingController? controller;

  const InputTextField(
      {super.key,
      required this.textFieldKey,
      required this.hint,
       this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: .2,
            blurRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextFormField(
        controller: controller,
        key: textFieldKey,
        decoration: InputDecoration(hintText: hint),
      ),
    );
  }
}

class InfoTextField extends StatelessWidget {
  final String value;

  final Key textFieldKey;

  const InfoTextField(
      {super.key, required this.textFieldKey, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: .2,
            blurRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextFormField(
        key: textFieldKey,
        initialValue: value,
      ),
    );
  }
}
