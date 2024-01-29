import 'package:flutter/material.dart';
import 'package:shopping_ui_flutter/extension/media_query_extension.dart';
import 'package:shopping_ui_flutter/screens/payment_screen/payment_screen.dart';
import 'package:shopping_ui_flutter/screens/shipment_screen/shipment_screen.dart';
import 'package:shopping_ui_flutter/utils/color.dart';
import 'package:shopping_ui_flutter/widget/button_product_widget.dart';

class OrderConfirmScreen extends StatelessWidget {
  const OrderConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        leading: const BackButton(),
        title: const Text("Confirm Order"),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Shipping Address",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: context.screenHeight * .01,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                width: context.screenWidth,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12, blurRadius: 4, spreadRadius: 2)
                    ]),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Dear Pro",
                            style: TextStyle(fontSize: 16),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ShipmentAddress()));
                              },
                              child: const Text(
                                "Change",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.butttonColor2,
                                ),
                              ))
                        ],
                      ),
                      const Text(
                        "3 Newbridge Court",
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        "Chino Hills, CA, 97545, United State",
                        style: TextStyle(fontSize: 16),
                      ),
                    ]),
              ),
              SizedBox(
                height: context.screenHeight * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Payment Method",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const PaymentMethodScreen()));
                      },
                      child: const Text(
                        "Change",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.butttonColor2,
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: context.screenHeight * .02,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          )
                        ]),
                    child: Image.asset(
                      "assets/mastercard.png",
                      width: 60,
                      height: 40,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: context.screenWidth * .02,
                  ),
                  const Text("**** **** **** 3876")
                ],
              ),
              SizedBox(
                height: context.screenHeight * .02,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery Method",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/icon3.png",
                            height: 25,
                          ),
                          const Text("2-7 Days")
                        ],
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Home Delivery",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const Text("2-7 Days"),
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: context.screenHeight * .05,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sub-Total",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "\$300.50",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping Fee",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "\$15.00",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 30,
                color: Colors.black,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Payment",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "\$380.50",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: AppColors.butttonColor2),
                  ),
                ],
              ),
              SizedBox(
                height: context.screenHeight * .03,
              ),
              InkWell(
                onTap: () {},
                child: const ProductButtonWIdget(
                  text: "Confirm Payment",
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
