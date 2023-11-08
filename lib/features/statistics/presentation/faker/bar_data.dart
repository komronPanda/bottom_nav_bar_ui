import 'individual_bar.dart';

class BarData {
  final double sunAmount;
  final double monAmount;
  final double tusAmount;
  final double wedAmount;
  final double thuAmount;
  final double friAmount;
  final double satAmount;

  BarData({
    required this.sunAmount,
    required this.monAmount,
    required this.tusAmount,
    required this.wedAmount,
    required this.thuAmount,
    required this.friAmount,
    required this.satAmount,
  });

  List<IndividualBar> bardData = [];

  void initializeBarData(){
    bardData = [
      IndividualBar(x: 0, y: sunAmount),
      IndividualBar(x: 1, y: monAmount),
      IndividualBar(x: 2, y: tusAmount),
      IndividualBar(x: 3, y: wedAmount),
      IndividualBar(x: 4, y: thuAmount),
      IndividualBar(x: 5, y: friAmount),
      IndividualBar(x: 6, y: satAmount),
    ];
  }
}
