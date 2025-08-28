import 'package:flutter/material.dart';
import 'package:timer_cook/models/timer_model.dart';
import 'package:timer_cook/utils/formatters.dart';

class TimerCard extends StatelessWidget{

final TimerModel timer;

const TimerCard({
super.key,
required this.timer
});

@override
Widget build(BuildContext context){
  return Card(
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [Text(
        timer.label,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          formatDuration(timer.remainingTime),
          style: const TextStyle(
            fontSize: 48,
            fontFamily: "monospace",
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(timer.isRunning ? Icons.pause : Icons.play_arrow),
              iconSize: 40,
              onPressed: () {},
            ),
            const SizedBox(width: 20),
            IconButton(
              icon: const Icon(Icons.stop),
              iconSize: 40,
              onPressed: () {},
            ),
          ],
        ),
        ],
      ),
    ),
  );
}
}