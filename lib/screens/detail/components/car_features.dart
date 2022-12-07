import 'package:flutter/material.dart';

class CarFeatures extends StatelessWidget {
  const CarFeatures({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.airline_seat_recline_normal,
                  color: Colors.grey,
                ),
                SizedBox(width: 6),
                Text("2 seats"),
              ],
            ),
            const SizedBox(height: 6),
            Row(
              children: const [
                Icon(
                  Icons.watch_later_outlined,
                  color: Colors.grey,
                ),
                SizedBox(width: 6),
                Text("232 km/h"),
              ],
            ),
          ],
        ),
        const SizedBox(width: 70),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.sensor_door_outlined,
                  color: Colors.grey,
                ),
                SizedBox(width: 6),
                Text("5 doors"),
              ],
            ),
            const SizedBox(height: 6),
            Row(
              children: const [
                Icon(
                  Icons.work_outline,
                  // CupertinoIcons.bag,
                  color: Colors.grey,
                ),
                SizedBox(width: 6),
                Text("4 bags"),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
