import 'package:circular_seek_bar/circular_seek_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleBar extends StatelessWidget {
 CircleBar({Key? key, required this.progressNum,  this.valueNotifier}) : super(key: key);
final double progressNum;
final ValueNotifier<double>? valueNotifier;
final ValueNotifier<double> _valueNotifier = ValueNotifier(0);


@override
Widget build(BuildContext context) {
  return CircularSeekBar(
    width: double.infinity,
    height:180,
    progress: progressNum,
    barWidth: 8,
    startAngle: 90,
    sweepAngle: 180,
    strokeCap: StrokeCap.round,
    progressGradientColors: const [Colors.blue, Colors.white],
    dashWidth: 50,
    animation: true,
    child: Center(
      child: ValueListenableBuilder(
          valueListenable: _valueNotifier,
          builder: (_, double value, __) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '4.00 GB',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF2776EA),
                  fontSize: 25,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: -0.50,
                ),
              ),
            Text(
            'Used of 5.00 GB',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFB3B3B3),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
              letterSpacing: -0.28,
            ),
          ),


            ],
          )),
    ),
  );
}
}