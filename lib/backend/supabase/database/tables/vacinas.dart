import '../database.dart';

class VacinasTable extends SupabaseTable<VacinasRow> {
  @override
  String get tableName => 'vacinas';

  @override
  VacinasRow createRow(Map<String, dynamic> data) => VacinasRow(data);
}

class VacinasRow extends SupabaseDataRow {
  VacinasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VacinasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get fabricante => getField<String>('fabricante');
  set fabricante(String? value) => setField<String>('fabricante', value);
}
