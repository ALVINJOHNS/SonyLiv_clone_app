import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sonyliv/core/constants.dart';
import 'package:sonyliv/presentation/widgets/title_widget.dart';

class TodaysHotPicksWidget extends StatelessWidget {
  const TodaysHotPicksWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWidget(title: 'Today\'s Hot Picks', moreButton: false),
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
                      imageUrl: imgurl,
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
      ],
    );
  }
}
