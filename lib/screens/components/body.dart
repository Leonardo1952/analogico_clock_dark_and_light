import 'package:flutter/material.dart';

import 'clock.dart';
import 'time_in_hour_and_minute.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Arapiraca, AL | BR",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const TimeInHourAndMinute(),
          Clock(),
        ],
      ),
    );
  }
}
