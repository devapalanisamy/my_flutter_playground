import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CustomSeekBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seek Bar'),
      ),
      body: Column(children: [
        SliderTheme(
          child: Slider(
            value: 50,
            max: 100,
            min: 0,
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
            onChanged: (double value) {},
          ),
          data: SliderTheme.of(context).copyWith(
              trackHeight: 28,
              thumbColor: Colors.transparent,
              disabledThumbColor: Colors.transparent,
              rangeThumbShape: null),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              height: 28,
              child: LinearProgressIndicator(
                backgroundColor: Colors.redAccent,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                value: 0.6,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearPercentIndicator(
              lineHeight: 28,
              percent: 0.8,
              progressColor: Colors.red,
              linearStrokeCap: LinearStrokeCap.butt,
            ),
          ),
        )
      ]),
    );
  }
}
