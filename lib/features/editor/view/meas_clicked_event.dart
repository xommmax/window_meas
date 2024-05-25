class MeasurementTapEvent {
  MeasurementTapEvent({
    required this.direction,
    required this.isMain,
    required this.index,
  });

  final MeasurementDirection direction;
  final bool isMain;
  final int index;
}

enum MeasurementDirection {
  vertical,
  horizontal,
}
