import '../database.dart';

class CampanhasTable extends SupabaseTable<CampanhasRow> {
  @override
  String get tableName => 'campanhas';

  @override
  CampanhasRow createRow(Map<String, dynamic> data) => CampanhasRow(data);
}

class CampanhasRow extends SupabaseDataRow {
  CampanhasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CampanhasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get dose => getField<String>('dose');
  set dose(String? value) => setField<String>('dose', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  DateTime? get atualizadoEm => getField<DateTime>('atualizado_em');
  set atualizadoEm(DateTime? value) =>
      setField<DateTime>('atualizado_em', value);

  bool? get encerrada => getField<bool>('encerrada');
  set encerrada(bool? value) => setField<bool>('encerrada', value);

  bool? get deleted => getField<bool>('deleted');
  set deleted(bool? value) => setField<bool>('deleted', value);

  String? get deletedPor => getField<String>('deleted_por');
  set deletedPor(String? value) => setField<String>('deleted_por', value);

  DateTime? get deletedEm => getField<DateTime>('deleted_em');
  set deletedEm(DateTime? value) => setField<DateTime>('deleted_em', value);

  int? get vacinaId => getField<int>('vacina_id');
  set vacinaId(int? value) => setField<int>('vacina_id', value);

  String? get aplicadorId => getField<String>('aplicador_id');
  set aplicadorId(String? value) => setField<String>('aplicador_id', value);
}
