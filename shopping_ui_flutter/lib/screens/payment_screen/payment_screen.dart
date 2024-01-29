import 'package:flutter/material.dart';
import 'package:shopping_ui_flutter/extension/media_query_extension.dart';
import 'package:shopping_ui_flutter/utils/color.dart';
import 'package:shopping_ui_flutter/widget/button_product_widget.dart';

import '../shipment_screen/shipment_screen.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int? _type = 1;
  _handleRadio(Object? e) => setState(() {
        _type = e as int;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        leading: const BackButton(),
        title: const Text("Payment Method"),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              SizedBox(
                height: context.screenHeight * .05,
              ),
              Container(
                height: 55,
                width: context.screenWidth,
                decoration: BoxDecoration(
                    border: _type == 1
                        ? Border.all(width: 1, color: AppColors.butttonColor2)
                        : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 1,
                            groupValue: _type,
                            onChanged: _handleRadio,
                            activeColor: AppColors.butttonColor2,
                          ),
                          Text(
                            "Credit Card",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/visa.png"),
                          Image.asset("assets/mastercard.png")
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 55,
                width: context.screenWidth,
                decoration: BoxDecoration(
                    border: _type == 2
                        ? Border.all(width: 1, color: AppColors.butttonColor2)
                        : Border.all(width: 0.3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: _type,
                              onChanged: _handleRadio,
                              activeColor: AppColors.butttonColor2,
                            ),
                            Text(
                              "Google Pay",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                            )
                          ],
                        ),
                        Image.asset(
                          "assets/icon2.png",
                          height: 30,
                          width: 50,
                        )
                      ],
                    ),
                  ),
                ),
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
                height: context.screenHeight * .3,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ShipmentAddress()));
                },
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
