import 'dart:async';
import "package:flutter/material.dart";
import 'package:timer_cook/models/timer_model.dart';
import 'package:timer_cook/widgets/timer_card.dart';

class TimerScreen extends StatefulWidget{
  const TimerScreen({super.key});

@override
State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen>{
final List<TimerModel> _timers=[

  TimerModel(id: "1", 
  label: "Papas al horno", 
  totalDuration: const Duration(minutes: 25), 
  remainingTime: const Duration(minutes: 15, seconds: 32),
  isRunning: true,
  ),
  TimerModel(id: "2", 
  label: "Enfriar postres", 
  totalDuration: const Duration(hours: 1 ), 
  remainingTime: const Duration(minutes: 15),
  isRunning: false,
  ),
  TimerModel(id: "3", 
  label: "Carne coccion lenta", 
  totalDuration: const Duration(hours: 3), 
  remainingTime: const Duration(hours: 2,minutes: 10, seconds: 32),
  isRunning: true,
  )
];

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text("Mis Timer de Cocina"),
    ),
    body: ListView.builder(
      itemCount:_timers.length,
      itemBuilder: (context, index){
        final Timer=_timers[index];
        return TimerCard(timer: Timer);
      },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){},
        child: const Icon(Icons.add),
        ),
        );
  }
}



