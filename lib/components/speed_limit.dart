import 'package:car_hmi_dashboard/constants.dart';
import 'package:flutter/material.dart';

class SpeedLimit extends StatelessWidget {
  const SpeedLimit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.speed, size: 32, color: primaryColor),
        const SizedBox(
            width: defaultPadding / 2),
        Text('100 km/H',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(
                color: primaryColor))
      ],
    );
  }
}
