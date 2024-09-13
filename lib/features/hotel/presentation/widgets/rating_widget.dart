import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final int rate;
  final int maxRate;
  final Color color;

  const RatingWidget(
      {super.key,
      required this.rate,
      this.maxRate = 5,
      this.color = Colors.orange});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < rate; i++) Icon(Icons.star, color: color, size: 18),
        if (rate < maxRate)
          for (var i = 0; i < maxRate - rate; i++)
            Icon(Icons.star_border, color: color, size: 18),
      ],
    );
  }
}
