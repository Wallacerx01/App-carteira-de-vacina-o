import '../database.dart';

class UsuarioVacinasTable extends SupabaseTable<UsuarioVacinasRow> {
  @override
  String get tableName => 'usuario_vacinas';

  @override
  UsuarioVacinasRow createRow(Map<String, dynamic> data) =>
      UsuarioVacinasRow(data);
}

class UsuarioVacinasRow extends SupabaseDataRow {
  UsuarioVacinasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuarioVacinasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get usuarioId => getField<String>('usuario_id')!;
  set usuarioId(String value) => setField<String>('usuario_id', value);

  int get vacinaId => getField<int>('vacina_id')!;
  set vacinaId(int value) => setField<int>('vacina_id', value);

  DateTime get dataAplicacao => getField<DateTime>('data_aplicacao')!;
  set dataAplicacao(DateTime value) =>
      setField<DateTime>('data_aplicacao', value);

  String get doseTipo => getField<String>('dose_tipo')!;
  set doseTipo(String value) => setField<String>('dose_tipo', value);

  String? get lote => getField<String>('lote');
  set lote(String? value) => setField<String>('lote', value);

  String? get comprovanteUrl => getField<String>('comprovante_url');
  set comprovanteUrl(String? value) =>
      setField<String>('comprovante_url', value);

  DateTime? get proxAplicacao => getField<DateTime>('prox_aplicacao');
  set proxAplicacao(DateTime? value) =>
      setField<DateTime>('prox_aplicacao', value);

  int? get postoId => getField<int>('posto_id');
  set postoId(int? value) => setField<int>('posto_id', value);

  String? get campanhaId => getField<String>('campanha_id');
  set campanhaId(String? value) => setField<String>('campanha_id', value);

  String? get aplicadorId => getField<String>('aplicador_id');
  set aplicadorId(String? value) => setField<String>('aplicador_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  DateTime? get atualizadoEm => getField<DateTime>('atualizado_em');
  set atualizadoEm(DateTime? value) =>
      setField<DateTime>('atualizado_em', value);

  bool? get temRetorno => getField<bool>('tem_retorno');
  set temRetorno(bool? value) => setField<bool>('tem_retorno', value);
}
