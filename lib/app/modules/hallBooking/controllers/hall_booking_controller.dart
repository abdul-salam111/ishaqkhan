import 'package:get/get.dart';
 import 'package:flutter/material.dart';

class HallBookingController extends GetxController {
  var emailController=TextEditingController();
  var noOfGeuests=TextEditingController();
  var phoneNumber=TextEditingController();
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Wedding", child: Text("Wedding")),
      const DropdownMenuItem(value: "Birthday", child: Text("Birthday")),
      const DropdownMenuItem(value: "Death", child: Text("Death")),
      
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get venueType {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Indoor", child: Text("Indoor")),
      const DropdownMenuItem(value: "Outdoor", child: Text("Outdoor")),
    ];
    return menuItems;
  }

  var selectedVanue = "Indoor".obs;

  var selectedDate = DateTime.now().obs;
  TextEditingController dateInput = TextEditingController();
  var selectedValue = "Wedding".obs;
}
