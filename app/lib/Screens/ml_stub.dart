// Lightweight stand-ins for the dead `tflite_flutter_helper` types.
//
// The original app ran on-device inference through tflite_flutter +
// tflite_flutter_helper, which depend on ffi 0.1.3 — a package that no longer
// compiles on Dart 2.12+. Those packages have been removed and the classifiers
// stubbed so the app builds and runs. See classifier1/2/3.dart.
class Category {
  final String label;
  final double score;

  Category(this.label, this.score);
}

class NormalizeOp {
  NormalizeOp(num mean, num stddev);
}
