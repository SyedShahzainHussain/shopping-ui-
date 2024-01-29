import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_ui_flutter/extension/media_query_extension.dart';
import 'package:shopping_ui_flutter/screens/order_confirm_screen/order_confirm_screen.dart';
import 'package:shopping_ui_flutter/widget/button_product_widget.dart';

class ShipmentAddress extends StatelessWidget {
  const ShipmentAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        leading: const BackButton(),
        title: const Text("Add Shipping Address"),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              SizedBox(
                height: context.screenHeight * .01,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Full Name"),
              ),
              SizedBox(
                height: context.screenHeight * .01,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Mobile Number",
                ),
              ),
              SizedBox(
                height: context.screenHeight * .01,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Address"),
              ),
              SizedBox(
                height: context.screenHeight * .01,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "City"),
              ),
              SizedBox(
                height: context.screenHeight * .01,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "State/Province/Region"),
              ),
              SizedBox(
                height: context.screenHeight * .01,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Zip Code (Postal Code)"),
              ),
              SizedBox(
                height: context.screenHeight * .01,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Country"),
              ),
              SizedBox(
                height: context.screenHeight * .02,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrderConfirmScreen()));
                },
                child: const ProductButtonWIdget(
                  text: "Add Address",
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
