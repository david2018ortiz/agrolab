import '../database.dart';

class DatosTable extends SupabaseTable<DatosRow> {
  @override
  String get tableName => 'datos';

  @override
  DatosRow createRow(Map<String, dynamic> data) => DatosRow(data);
}

class DatosRow extends SupabaseDataRow {
  DatosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DatosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
