import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopping_ui_flutter/extension/media_query_extension.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:shopping_ui_flutter/widget/button_product_widget.dart';
import 'package:shopping_ui_flutter/widget/button_widget.dart';
import 'package:shopping_ui_flutter/widget/pop_up_product_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/image1.jpg",
      "assets/image2.jpg",
      "assets/image3.jpg",
      "assets/image4.jpg",
      "assets/image5.jpg",
      "assets/image6.jpg",
    ];
    List<Color> clrs = [Colors.red, Colors.green, Colors.indigo, Colors.amber];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          leading: const BackButton(),
          title: const Text("Products Overview"),
          elevation: 0,
          centerTitle: true,
          scrolledUnderElevation: 0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: context.screenHeight * .50,
                    width: context.screenWidth,
                    child: FanCarouselImageSlider(
                      imagesLink: images,
                      sliderHeight: context.screenHeight * .45,
                      isAssets: true,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Warm Zipper",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25,
                                ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Hooded Jacket",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w900,
                                ),
                          ),
                        ],
                      ),
                      Text(
                        "\$300.00",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                color: const Color(0xFFDB3022),
                                fontWeight: FontWeight.w900,
                                fontSize: 25),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 25,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Cool. windy weather is on its way. Send him out\nthe door in a jacket he wants to wear. Warm\nZooper Hooded Jacket.",
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: Colors.black54,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0x1f989797),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.shopping_cart,
                            color: Color(0xFFDB3022),
                          ),
                        ),
                      ),
                      PopUpProduct(clrs: clrs)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
