import 'package:flutter/material.dart';
import 'package:shopping_ui_flutter/extension/media_query_extension.dart';
import 'package:shopping_ui_flutter/screens/cart_screen/cart_screen.dart';
import 'package:shopping_ui_flutter/widget/button_product_widget.dart';

class PopUpProduct extends StatelessWidget {
  const PopUpProduct({
    super.key,
    required this.clrs,
  });

  final List<Color> clrs;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        var isTheme = Theme.of(context)
            .textTheme
            .labelLarge!
            .copyWith(color: Colors.black);
        showModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) {
              return Container(
                height: context.screenHeight / 2.5,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Size: ", style: isTheme),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text("Color: ", style: isTheme),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text("Total: ", style: isTheme),
                              ],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "S",
                                      style: isTheme,
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      "M",
                                      style: isTheme,
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      "L",
                                      style: isTheme,
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      "XL",
                                      style: isTheme,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    for (var i = 0; i < clrs.length; i++)
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                          horizontal: 2,
                                        ),
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: clrs[i],
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      )
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "-",
                                      style: isTheme,
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      "1",
                                      style: isTheme,
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      "+",
                                      style: isTheme,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ]),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Payment",
                            style: isTheme,
                          ),
                          const Text(
                            "\$40.00",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFDB3022)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CarScreen()));
                        },
                        child: ProductButtonWIdget(
                          text: "Check Out",
                          width: context.screenWidth,
                        ),
                      )
                    ],
                  ),
                ),
              );
            });
      },
      child: ProductButtonWIdget(
        text: "Buy Now",
        width: context.screenWidth / 1.5,
      ),
    );
  }
}
