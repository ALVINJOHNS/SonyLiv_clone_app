import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:sonyliv/core/constants.dart';

class MainBannerCarouselWidget extends StatelessWidget {
  const MainBannerCarouselWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.6,
      child: Stack(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              child: CarouselSlider.builder(
                autoSliderDelay: const Duration(seconds: 8),
                autoSliderTransitionTime: const Duration(microseconds: 300000),
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
                        height: MediaQuery.of(context).size.height * 0.58,
                        child: CachedNetworkImage(
                          imageUrl: imagelinks[index],
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
                itemCount: imagelinks.length,
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
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white)),
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
    );
  }
}
