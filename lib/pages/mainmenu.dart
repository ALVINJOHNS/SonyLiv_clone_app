import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class Mainmenu extends StatelessWidget {
  int page = 0;

  Mainmenu({super.key});
  final imagelinkes = [
    'https://onlookersmedia.in/wp-content/uploads/2020/12/second-look-poster-vikrams-cobra-2.jpg',
    'https://www.filmibeat.com/img/190x100x237/popcorn/movie_posters/eesho-20221004164514-20114.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //image carousel

            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Stack(
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: CarouselSlider.builder(
                        autoSliderDelay: const Duration(seconds: 8),
                        autoSliderTransitionTime:
                            const Duration(microseconds: 300000),
                        enableAutoSlider: true,
                        unlimitedMode: true,
                        slideIndicator: CircularSlideIndicator(
                          indicatorBorderWidth: 0,
                          currentIndicatorColor:
                              const Color.fromARGB(255, 255, 255, 255),
                          indicatorRadius: 4.5,
                          itemSpacing: 14,
                          indicatorBackgroundColor:
                              const Color.fromARGB(189, 106, 106, 106),
                          padding: const EdgeInsets.only(bottom: 0),
                        ),
                        slideBuilder: (index) {
                          return Stack(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.58,
                                child: CachedNetworkImage(
                                  imageUrl: imagelinkes[index],
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(0, 0, 0, 0),
                                      Color.fromARGB(0, 0, 0, 0),
                                      Color.fromARGB(255, 13, 13, 13)
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                        itemCount: imagelinkes.length,
                      )),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.65,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.08,
                            ),
                            SizedBox(
                              width: 80,
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Add to My List',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.width * 0.1,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.white)),
                                onPressed: () {},
                                child: const Text(
                                  'Play Now',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                            const SizedBox(),
                            SizedBox(
                              width: 80,
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.share,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Share',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.08,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            //horizontal listview -1

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  '''Today's Hot Picks''',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 200,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: CachedNetworkImage(
                          fit: BoxFit.fitWidth,
                          imageUrl:
                              'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
                          imageBuilder: (context, imageprovider) {
                            return Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: imageprovider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    (index + 1).toString(),
                                    style: const TextStyle(
                                        fontSize: 70,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            );
                          },
                        ));
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 0,
                    );
                  },
                  itemCount: 8),
            ),

            //horizontal listview 2

            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Trending In Sports',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  child: const Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white,
                    size: 15,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 150,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 150,
                      width: 112,
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        imageBuilder: (context, imageProvider) {
                          return Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: imageProvider, fit: BoxFit.cover)),
                          );
                        },
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 8,
                    );
                  },
                  itemCount: 7),
            ),
            const SizedBox(
              height: 25,
            ),

            //static image

            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.28,
              child: CachedNetworkImage(
                imageUrl:
                    'https://resources.sonyliv.com/image/fetch/w_1349,c_fill,fl_lossy,f_auto,q_auto:eco,e_contrast:30,e_brightness:10/https://origin-staticv2.sonyliv.com/detail_cover_bg/GoodBadGirl_11_Detail_coverbg.jpg',
                imageBuilder: (context, imageProvider) {
                  return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.cover)),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
