import '../database.dart';

class ViewCampanhasUsuarioTable extends SupabaseTable<ViewCampanhasUsuarioRow> {
  @override
  String get tableName => 'view_campanhas_usuario';

  @override
  ViewCampanhasUsuarioRow createRow(Map<String, dynamic> data) =>
      ViewCampanhasUsuarioRow(data);
}

class ViewCampanhasUsuarioRow extends SupabaseDataRow {
  ViewCampanhasUsuarioRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewCampanhasUsuarioTable();

  int? get usuarioCampanhaId => getField<int>('usuario_campanha_id');
  set usuarioCampanhaId(int? value) =>
      setField<int>('usuario_campanha_id', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get dataVinculo => getField<DateTime>('data_vinculo');
  set dataVinculo(DateTime? value) => setField<DateTime>('data_vinculo', value);

  String? get campanhaId => getField<String>('campanha_id');
  set campanhaId(String? value) => setField<String>('campanha_id', value);

  String? get dose => getField<String>('dose');
  set dose(String? value) => setField<String>('dose', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  bool? get encerrada => getField<bool>('encerrada');
  set encerrada(bool? value) => setField<bool>('encerrada', value);

  int? get vacinaId => getField<int>('vacina_id');
  set vacinaId(int? value) => setField<int>('vacina_id', value);

  String? get aplicadorId => getField<String>('aplicador_id');
  set aplicadorId(String? value) => setField<String>('aplicador_id', value);

  String? get nomeVacina => getField<String>('nome_vacina');
  set nomeVacina(String? value) => setField<String>('nome_vacina', value);

  String? get fabricanteVacina => getField<String>('fabricante_vacina');
  set fabricanteVacina(String? value) =>
      setField<String>('fabricante_vacina', value);

  String? get aplicadorNome => getField<String>('aplicador_nome');
  set aplicadorNome(String? value) => setField<String>('aplicador_nome', value);

  String? get aplicadorEmail => getField<String>('aplicador_email');
  set aplicadorEmail(String? value) =>
      setField<String>('aplicador_email', value);
}
