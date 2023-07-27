import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ishaqkhan/app/modules/const.dart';
import 'package:ishaqkhan/app/modules/hallBooking/controllers/hall_booking_controller.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:intl/intl.dart';

import '../../commonWidgets/customeButton.dart';

class ReviewBooking extends GetView<HallBookingController> {
  const ReviewBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: confirmBooking(
            onPress: () {},
            btnName: "Confirm Booking",
            btnSize: const Size(200, 50)),
      appBar: AppBar(
        title: const Text("Review Booking"),
        backgroundColor: darkcolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: darkcolor, borderRadius: BorderRadius.circular(2)),
                  clipBehavior: Clip.antiAlias,
                  child: const Text(
                    "Booking Details",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      "Venue:".text.size(14).make(),
                      5.widthBox,
                      "Meer Palace".text.size(14).bold.make()
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      "Event Type:".text.size(14).make(),
                      5.widthBox,
                      controller.selectedValue.value.text.size(14).bold.make()
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      "Venue Type:".text.size(14).make(),
                      5.widthBox,
                      controller.selectedVanue.value.text.size(14).bold.make()
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                   Row(
                    children: [
                      "No of guests:".text.size(14).make(),
                      5.widthBox,
                      controller.noOfGeuests .text.toString().text.size(14).bold.make()
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      "Booking Date:".text.size(14).make(),
                      5.widthBox,
                      DateFormat.yMEd()
                          .format(controller.selectedDate.value)
                          .toString()
                          .text
                          .size(14)
                          .bold
                          .make()
                    ],
                  ),
                ],
              )
                  .box
                  .margin(const EdgeInsets.all(5))
                  .padding(const EdgeInsets.all(5))
                  .roundedSM
                  .border(color: darkcolor)
                  .make(),
              10.heightBox,
              "Food Items"
                  .text
                  .white
                  .size(15)
                  .make()
                  .box
                  .color(darkcolor)
                  .padding(const EdgeInsets.all(2))
                  .withRounded(value: 3)
                  .width(double.infinity)
                  .make(),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          
                              children: [
                                "${index+1}) Kabli Pulao: ".text.make(),
                                
                                "Rs.900".text.bold.make()
                              ],
                            ),
                      )),
                ).box.border(color: darkcolor,).padding(const EdgeInsets.all(5)).roundedSM.make(),
              ),
              10.heightBox,
              "Equipment Items"
                  .text
                  .white
                  .size(15)
                  .make()
                  .box
                  .color(darkcolor)
                  .padding(const EdgeInsets.all(2))
                  .withRounded(value: 3)
                  .width(double.infinity)
                  .make(),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          
                              children: [
                                "${index+1}) Speaker: ".text.make(),
                                
                                "Rs.1200".text.bold.make()
                              ],
                            ),
                      )),
                ).box.border(color: darkcolor,).padding(const EdgeInsets.all(5)).roundedSM.make(),
              ),
              10.heightBox,
              "Personal Details"
                  .text
                  .white
                  .size(15)
                  .make()
                  .box
                  .color(darkcolor)
                  .padding(const EdgeInsets.all(2))
                  .withRounded(value: 3)
                  .width(double.infinity)
                  .make(),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Row(
                          children: [
                            "Phone: ".text.size(14).make(),
                            5.widthBox,
                            controller.phoneNumber.text.toString().text.size(14).bold.make()
                          ],
                        ),
                      10.heightBox,
                     Row(
                          children: [
                            "Email:".text.size(14).make(),
                            5.widthBox,
                            controller.emailController.text.toString().text.size(14).bold.make()
                          ],
                        ),
                    ],
                  ).box
      
                  .padding(const EdgeInsets.all(5))
                  .roundedSM
                  .border(color: darkcolor)
                  .make(),
                ),
                10.heightBox,
                Expanded(child: Container()),
              Row(
                          children: [
                            "Total Bill:".text.size(14).bold.make(),
                            5.widthBox,
                            "150000 pkr".text.size(15).color(Vx.red400).make()
                          ],
                        ).box.roundedSM.border(color: darkcolor).padding(const EdgeInsets.all(5)).margin(const EdgeInsets.all(5)).make(),
            ],
          ),
        ).box.border(color: darkcolor).roundedSM.make(),
      ),
    );
  }
}
