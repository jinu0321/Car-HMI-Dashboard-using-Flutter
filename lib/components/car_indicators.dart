import 'package:flutter/material.dart';

class CarIndicators extends StatelessWidget {
  const CarIndicators({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      MainAxisAlignment.center,
      children: [
        TextButton(
            onPressed: () {},
            child: Icon(Icons.chevron_left,
                size: 32,
                color: Colors.teal)),
        TextButton(
            onPressed: () {},
            child: Icon(Icons.light,
                size: 32,
                color: Colors.grey
                    .withOpacity(0.4))),
        TextButton(
            onPressed: () {},
            child: Icon(Icons.light_outlined,
                size: 32,
                color: Colors.grey
                    .withOpacity(0.4))),
        TextButton(
            onPressed: () {},
            child: Icon(Icons.chevron_right,
                size: 32,
                color: Colors.grey
                    .withOpacity(0.4))),
      ],
    );
  }
}
