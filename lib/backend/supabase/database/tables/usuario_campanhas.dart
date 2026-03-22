import '../database.dart';

class UsuarioCampanhasTable extends SupabaseTable<UsuarioCampanhasRow> {
  @override
  String get tableName => 'usuario_campanhas';

  @override
  UsuarioCampanhasRow createRow(Map<String, dynamic> data) =>
      UsuarioCampanhasRow(data);
}

class UsuarioCampanhasRow extends SupabaseDataRow {
  UsuarioCampanhasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuarioCampanhasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get dataVinculo => getField<DateTime>('data_vinculo')!;
  set dataVinculo(DateTime value) => setField<DateTime>('data_vinculo', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  String? get campanhaId => getField<String>('campanha_id');
  set campanhaId(String? value) => setField<String>('campanha_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
