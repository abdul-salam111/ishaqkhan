import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'package:ishaqkhan/app/modules/commonWidgets/customTextfield.dart';
import 'package:ishaqkhan/app/modules/commonWidgets/customeButton.dart';
import 'package:ishaqkhan/app/modules/const.dart';
import 'package:ishaqkhan/app/modules/hallBooking/views/reviewBooking.dart';
import '../controllers/hall_booking_controller.dart';

class HallBookingView extends GetView<HallBookingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: confirmBooking(
            onPress: () {Get.to(()=>const ReviewBooking());},
            btnName: "Proceed to booking",
            btnSize: const Size(200, 50)),
        appBar: AppBar(
          backgroundColor: darkcolor,
          title: const Text('Booking Details'),
          centerTitle: true,
        ),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                "Event Type",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Expanded(child: Container()),
                              Obx(
                                () => DropdownButton(
                                  value: controller.selectedValue.value,
                                  items: controller.dropdownItems,
                                  onChanged: (newvalue) {
                                    controller.selectedValue.value =
                                        newvalue as String;
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                "Venue",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Expanded(child: Container()),
                              const Text(
                                "Meer Palace",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                "Venue Type",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Expanded(child: Container()),
                              Obx(
                                () => DropdownButton(
                                  value:controller. selectedVanue.value,
                                  items:controller. venueType,
                                  onChanged: (newvalue) {
                                   controller. selectedVanue.value = newvalue as String;
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                "Event Date",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Expanded(child: Container()),
                              SizedBox(
                                width: 200,
                                child: Obx(
                                  () => TextField(
                                    decoration: InputDecoration(
                                        suffixIcon:
                                            const Icon(Icons.calendar_month),
                                        hintText:controller.selectedDate.value==null
                                            ? "Select Date and Time"
                                            :DateFormat.yMEd().format(controller.selectedDate.value)),
                                    readOnly: true,
                                    onTap: () {
                                      showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime(2020, 1, 1),
                                              lastDate: DateTime(2024, 1, 1))
                                          .then((pickedDate) {
                                        if (pickedDate == null) {
                                          //if user tap cancel then this function will stop
                                          return;
                                        } else {
                                          controller.selectedDate.value =pickedDate;
                                        }
                                      });
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Food Items",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (val) {},
                            ),
                            const Text("Kabli Pulao"),
                            Checkbox(
                              value: false,
                              onChanged: (val) {},
                            ),
                            const Text("Biryani"),
                            Checkbox(
                              value: true,
                              onChanged: (val) {},
                            ),
                            const Text("Chinese Rice")
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Equipment Items",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (val) {},
                            ),
                            const Text("Speaker"),
                            Checkbox(
                              value: false,
                              onChanged: (val) {},
                            ),
                            const Text("Dj"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (val) {},
                            ),
                            const Text("Stage"),
                            Checkbox(
                              value: true,
                              onChanged: (val) {},
                            ),
                            const Text("Lightining")
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "No of guests*",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        customTextFields(
                          textEditingController: controller.noOfGeuests,
                            prefixicon: Icons.person, hintText: "eg. 300"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Phone*",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        customTextFields(
                          textEditingController: controller.phoneNumber,
                            keyboradType: TextInputType.phone,
                            prefixicon: Icons.phone,
                            hintText: "+9200000000000"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Email*",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        customTextFields(
                            textEditingController: controller.emailController,
                            prefixicon: Icons.email,
                            hintText: "john@gmail.com"),
                        const SizedBox(
                          height: 20,
                        ),
                      ]),
                ))));
  }
}
