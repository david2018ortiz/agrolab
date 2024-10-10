import 'package:collection/collection.dart';

enum UserRol {
  admin,
  cliente,
  granjero,
}

enum StatusProyect {
  open,
  close,
  inProgress,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (UserRol):
      return UserRol.values.deserialize(value) as T?;
    case (StatusProyect):
      return StatusProyect.values.deserialize(value) as T?;
    default:
      return null;
  }
}
