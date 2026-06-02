import 'package:image/image.dart';
import 'ml_stub.dart';

// ML inference disabled in this build (melanoma model).
// The tflite_flutter / tflite_flutter_helper stack this relied on no longer
// compiles on this Dart version (it depends on ffi 0.1.3). predict() returns
// a placeholder so the app still builds and runs.
abstract class Classifier3 {
  Classifier3({int numThreads});

  String get modelName;

  NormalizeOp get preProcessNormalizeOp;
  NormalizeOp get postProcessNormalizeOp;

  Category predict(Image image) {
    return Category('Demo result (ML disabled)', 0.0);
  }

  void close() {}
}
