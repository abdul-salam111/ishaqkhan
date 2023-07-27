import 'package:flutter/material.dart';

import '../const.dart';

Widget customTextFields(
    {TextEditingController?textEditingController,String? hintText,
    String? Label,
    IconData? prefixicon,
    TextInputType? keyboradType}) {
  return TextFormField(
    keyboardType: keyboradType,
    validator: (val) {
      if (val!.isEmpty) {
        return "Required*";
      }
      return null;
    },
    style: const TextStyle(letterSpacing: 0.5, color: darkcolor),
    controller: textEditingController,
    decoration: InputDecoration(
      prefixIcon: Icon(
        prefixicon,
        color: darkcolor,
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      hintText: hintText,
      labelStyle: const TextStyle(letterSpacing: 0.5),
      labelText: Label,
      alignLabelWithHint: true,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: darkcolor, width: 1)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: darkcolor, width: 2)),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: darkcolor, width: 1)),
    ),
  );
}

Widget phoneTextField(TextEditingController?textEditingController) {
  return TextFormField(
    controller: textEditingController,
    maxLength: 13,
    keyboardType: TextInputType.phone,
    validator: (val) {
      if (val!.isEmpty) {
        return "Required*";
      }
      return null;
    },
    style: const TextStyle(color: darkcolor, fontSize: 16, letterSpacing: 0.5),
    decoration: InputDecoration(
      prefixIcon: const Icon(
        Icons.phone,
        color: darkcolor,
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      hintText: "+923000000000",
      labelStyle:
          const TextStyle(color: darkcolor, fontSize: 16, letterSpacing: 0.5),
      labelText: "Phone",
      alignLabelWithHint: true,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: darkcolor, width: 1)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: darkcolor, width: 2)),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: darkcolor, width: 1)),
    ),
  );
}

Widget searchTextfield(
    {String? hintText,
    String? Label,
    IconData? suffixIcon,
    TextInputType? keyboradType}) {
  return SizedBox(
    height: 35,
    child: TextFormField(
      keyboardType: keyboradType,
      validator: (val) {
        if (val!.isEmpty) {
          return "Required*";
        }
        return null;
      },
      style: const TextStyle(letterSpacing: 0.5, color: darkcolor),
      decoration: InputDecoration(
        suffixIcon: Icon(
          suffixIcon,
          color: Colors.grey,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        hintText: hintText,
        labelStyle: const TextStyle(letterSpacing: 0.5),
        labelText: Label,
        alignLabelWithHint: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.grey, width: 1)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.grey, width: 2)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.grey, width: 1)),
      ),
    ),
  );
}
