import 'package:flutter/material.dart';
import 'package:shopping_ui_flutter/extension/media_query_extension.dart';
import 'package:shopping_ui_flutter/screens/product_screen/product_screen.dart';
import 'package:shopping_ui_flutter/utils/color.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> tabs = [
      "All",
      "Category",
      "Top",
      "Recommended",
    ];
    List<String> imageList = [
      "assets/image1.jpg",
      "assets/image2.jpg",
      "assets/image3.jpg",
      "assets/image4.jpg",
    ];
    List<String> productTitles = [
      "Warm Zipper",
      "Knitted Woo!",
      "Zipper Win",
      "Child Win",
    ];
    List<String> prices = [
      "\$300",
      "\$650",
      "\$30",
      "\$100",
    ];
    List<String> reviews = [
      "54",
      "120",
      "545",
      "543",
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // ! product search and notification
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 50,
                        width: context.screenWidth / 1.5,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 2,
                              spreadRadius: 1,
                            )
                          ],
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: AppColors.butttonColor2,
                            ),
                            border: InputBorder.none,
                            hintText: "Find your product",
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: context.screenWidth / 6,
                        decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.notifications,
                            color: AppColors.butttonColor2,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight * .03,
                  ),
                  CarouselSlider.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        Container(
                      margin: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                        bottom: 5,
                        top: 5,
                      ),
                      // height: 180,
                      width: context.screenWidth,
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFF0DD),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 1,
                              spreadRadius: 2,
                            ),
                          ]),
                      child: Image.asset("assets/freed.png"),
                    ),
                    options: CarouselOptions(
                      height: 130,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.4,
                      // onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * .01,
                  ),
                  SizedBox(
                    height: context.screenHeight * .06,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return FittedBox(
                          child: Container(
                            height: 40,
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            decoration: BoxDecoration(
                              color: Colors.black12.withOpacity(0.05),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: FittedBox(
                                child: Text(
                                  tabs[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: Colors.black38,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: tabs.length,
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * .01,
                  ),
                  SizedBox(
                    height: context.screenHeight * .22,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          width: context.screenWidth * .75,
                          margin: const EdgeInsets.only(right: 12),
                          child: Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: context.screenHeight * .20,
                                      width: context.screenWidth * .4,
                                      child: Stack(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const ProductScreen()));
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.asset(
                                                imageList[index],
                                                width: context.screenWidth * .4,
                                                height:
                                                    context.screenHeight * .20,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              top: 10,
                                              right: 10,
                                              child: Container(
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: const Center(
                                                    child: Icon(
                                                  Icons.favorite,
                                                  size: 18,
                                                  color:
                                                      AppColors.butttonColor2,
                                                )),
                                              ))
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: context.screenHeight * .01,
                                    ),
                                  ]),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      productTitles[index],
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      softWrap: true,
                                    ),
                                    const SizedBox(
                                      width: 120,
                                      child: Text(
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 5,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Text("(${reviews[index]})"),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          prices[index],
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge!
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.butttonColor2,
                                              ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      itemCount: imageList.length,
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * .01,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Newest Products",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: productTitles.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.55,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 15),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: context.screenHeight * .3,
                                  child: Stack(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ProductScreen()));
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            imageList[index],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                          top: 10,
                                          right: 10,
                                          child: Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: const Center(
                                                child: Icon(
                                              Icons.favorite,
                                              size: 18,
                                              color: AppColors.butttonColor2,
                                            )),
                                          ))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: context.screenHeight * .01,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(productTitles[index]),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Text("(${reviews[index]})"),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          prices[index],
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge!
                                              .copyWith(
                                                color: AppColors.butttonColor2,
                                              ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ]),
                        );
                      })
                ],
              )),
        ),
      ),
    );
  }
}
