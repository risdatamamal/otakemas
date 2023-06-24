part of 'repositories.dart';

class StopTimerRepository {
  final Store store;

  StopTimerRepository({required this.store});

  int addOrUpdateStopTimer(StopTimer stopTimer) {
    return store.box<StopTimer>().put(stopTimer);
  }

  StopTimer? getStopTimerById(int id) {
    return store.box<StopTimer>().get(id);
  }
}