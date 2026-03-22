import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuariosTable();

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String get cartaoVacina => getField<String>('cartao_vacina')!;
  set cartaoVacina(String value) => setField<String>('cartao_vacina', value);

  DateTime get dataNascimento => getField<DateTime>('data_nascimento')!;
  set dataNascimento(DateTime value) =>
      setField<DateTime>('data_nascimento', value);

  String get sexo => getField<String>('sexo')!;
  set sexo(String value) => setField<String>('sexo', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String? get fotoPerfilUrl => getField<String>('foto_perfil_url');
  set fotoPerfilUrl(String? value) =>
      setField<String>('foto_perfil_url', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);
}
