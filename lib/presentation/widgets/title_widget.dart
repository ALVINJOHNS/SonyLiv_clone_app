import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  TitleWidget({super.key, required this.title, required this.moreButton});
  final String title;
  final bool moreButton;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          textAlign: TextAlign.start,
        ),
        const SizedBox(
          width: 5,
        ),
        moreButton
            ? GestureDetector(
                child: const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.white,
                  size: 15,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
