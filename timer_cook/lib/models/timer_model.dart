import "package:flutter/material.dart";

class TimerModel{
  final String id;
  final String label;
  final Duration totalDuration;
  Duration remainingTime;
  bool isRunning;

TimerModel({
  required this.id,
  required this.label,
  required this.totalDuration,
  required this.remainingTime,
  this.isRunning=false
  
}
);
}