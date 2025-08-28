
import"dart:async";

import "package:timer_cook/models/timer_model.dart";
import 'package:timer_cook/screens/timer_screen.dart';

class TimerService{
  final List<TimerModel> _timers=[];

final _controller = StreamController<List<TimerModel>>.broadcast();


Stream<List<TimerModel>> get timerStream => _controller.stream;

Timer? _ticker;

TimerService() {
  _startTicker();
}

void _startTicker() {
  if (_ticker != null && _ticker!.isActive) return;
  _ticker = Timer.periodic(const Duration(seconds: 1), (timer) {
    if (_timers.every((t) => !t.isRunning)) return;

    for (var timerModel in _timers) {
      if (timerModel.isRunning && timerModel.remainingTime > Duration.zero) {
        timerModel.remainingTime -= const Duration(seconds: 1);
        if (timerModel.remainingTime.inSeconds <= 0) {
          timerModel.isRunning = false;
        }
      }
      _controller.add(List.from(_timers));
    }}
  );
    void toggleTimer(String id){
      final timer=_timers.firstWhere((t) => t.id == id);
      timer.isRunning = !timer.isRunning;
      _controller.add(List.from(_timers));
    }

    void removeTimer(String id){
      _timers.removeWhere((t) => t.id == id);
      _controller.add(List.from(_timers));
    }

    void disponse(){
      _ticker?.cancel();
      _controller.close();
    }



}

}