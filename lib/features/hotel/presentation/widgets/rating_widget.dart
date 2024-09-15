import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final int rate;
  final int maxRate;
  final Color color;
  final double size;

  const RatingWidget({
    super.key,
    required this.rate,
    this.maxRate = 5,
    this.color = Colors.orange,
    this.size = 18.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(rate, (index) {
          return Icon(Icons.star, color: color, size: size);
        }),
        if (rate < maxRate)
          ...List.generate(maxRate - rate, (index) {
            return Icon(Icons.star_border, color: color, size: size);
          }),
      ],
    );
  }
}