import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:sonyliv/core/constants.dart';
import 'package:sonyliv/presentation/mainmenu/widgets/main_banner_carousel_widget.dart';
import 'package:sonyliv/presentation/mainmenu/widgets/todays_hot_picks_widget.dart';
import 'package:sonyliv/presentation/mainmenu/widgets/trending_in_widget.dart';

class MainmenuScreen extends StatelessWidget {
  final int page = 0;

  MainmenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //image carousel
            MainBannerCarouselWidget(),
            //horizontal listview -1

            TodaysHotPicksWidget(),

            //horizontal listview 2

            const SizedBox(
              height: 25,
            ),
            TrendingInWidget(),

            //static image

            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.28,
              child: CachedNetworkImage(
                imageUrl: imgurl3,
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


