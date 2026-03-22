import '../database.dart';

class BdAtivoTable extends SupabaseTable<BdAtivoRow> {
  @override
  String get tableName => 'bd_ativo';

  @override
  BdAtivoRow createRow(Map<String, dynamic> data) => BdAtivoRow(data);
}

class BdAtivoRow extends SupabaseDataRow {
  BdAtivoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BdAtivoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get num => getField<int>('num');
  set num(int? value) => setField<int>('num', value);
}
