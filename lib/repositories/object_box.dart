part of 'repositories.dart';

class ObjectBox {
  final Store store;

  ObjectBox._(this.store);

  static Future<ObjectBox> create() async {
    final dir = await getApplicationDocumentsDirectory();

    final store = await openStore(directory: p.join(dir.path, 'otakemas'));

    return ObjectBox._(store);
  }
}