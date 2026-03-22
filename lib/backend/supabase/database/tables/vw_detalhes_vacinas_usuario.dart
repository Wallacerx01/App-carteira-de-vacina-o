import '../database.dart';

class VwDetalhesVacinasUsuarioTable
    extends SupabaseTable<VwDetalhesVacinasUsuarioRow> {
  @override
  String get tableName => 'vw_detalhes_vacinas_usuario';

  @override
  VwDetalhesVacinasUsuarioRow createRow(Map<String, dynamic> data) =>
      VwDetalhesVacinasUsuarioRow(data);
}

class VwDetalhesVacinasUsuarioRow extends SupabaseDataRow {
  VwDetalhesVacinasUsuarioRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwDetalhesVacinasUsuarioTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get nomeUsuario => getField<String>('nome_usuario');
  set nomeUsuario(String? value) => setField<String>('nome_usuario', value);

  String? get cartaoVacina => getField<String>('cartao_vacina');
  set cartaoVacina(String? value) => setField<String>('cartao_vacina', value);

  DateTime? get dataNascimento => getField<DateTime>('data_nascimento');
  set dataNascimento(DateTime? value) =>
      setField<DateTime>('data_nascimento', value);

  String? get sexo => getField<String>('sexo');
  set sexo(String? value) => setField<String>('sexo', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get fotoPerfilUrl => getField<String>('foto_perfil_url');
  set fotoPerfilUrl(String? value) =>
      setField<String>('foto_perfil_url', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  int? get vacinaId => getField<int>('vacina_id');
  set vacinaId(int? value) => setField<int>('vacina_id', value);

  String? get nomeVacina => getField<String>('nome_vacina');
  set nomeVacina(String? value) => setField<String>('nome_vacina', value);

  String? get fabricante => getField<String>('fabricante');
  set fabricante(String? value) => setField<String>('fabricante', value);

  int? get usuarioVacinaId => getField<int>('usuario_vacina_id');
  set usuarioVacinaId(int? value) => setField<int>('usuario_vacina_id', value);

  DateTime? get dataAplicacao => getField<DateTime>('data_aplicacao');
  set dataAplicacao(DateTime? value) =>
      setField<DateTime>('data_aplicacao', value);

  DateTime? get proxAplicacao => getField<DateTime>('prox_aplicacao');
  set proxAplicacao(DateTime? value) =>
      setField<DateTime>('prox_aplicacao', value);

  String? get doseTipo => getField<String>('dose_tipo');
  set doseTipo(String? value) => setField<String>('dose_tipo', value);

  String? get lote => getField<String>('lote');
  set lote(String? value) => setField<String>('lote', value);

  String? get comprovanteUrl => getField<String>('comprovante_url');
  set comprovanteUrl(String? value) =>
      setField<String>('comprovante_url', value);

  String? get nomeAplicador => getField<String>('nome_aplicador');
  set nomeAplicador(String? value) => setField<String>('nome_aplicador', value);
}
