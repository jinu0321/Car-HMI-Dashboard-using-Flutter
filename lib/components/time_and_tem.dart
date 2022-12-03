import 'package:car_hmi_dashboard/constants.dart';
import 'package:flutter/material.dart';

class TimeAndTem extends StatelessWidget {
  const TimeAndTem({
    Key? key,
    required this.size,
    required this.constraints,
  }) : super(key: key);

  final Size size;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth * 0.21,
      height: constraints.maxHeight * 0.11,
      child: Row(
        children: [
          Text('05:21 PM'),
          Spacer(),
          Image.asset('assets/icons/sun.png',
              width: 32, height: 32),
          const SizedBox(width: defaultPadding / 4),
          Text('18 °C'),
        ],
      ),
    );
  }
}