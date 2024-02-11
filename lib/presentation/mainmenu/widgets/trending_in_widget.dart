import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sonyliv/core/constants.dart';
import 'package:sonyliv/presentation/widgets/title_widget.dart';

class TrendingInWidget extends StatelessWidget {
  const TrendingInWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(title: 'Trending In Sports', moreButton: true),
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
                    imageUrl: imgurl2,
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
      ],
    );
  }
}
