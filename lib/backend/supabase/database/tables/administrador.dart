import '../database.dart';

class AdministradorTable extends SupabaseTable<AdministradorRow> {
  @override
  String get tableName => 'administrador';

  @override
  AdministradorRow createRow(Map<String, dynamic> data) =>
      AdministradorRow(data);
}

class AdministradorRow extends SupabaseDataRow {
  AdministradorRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AdministradorTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get senhaHash => getField<String>('senha_hash')!;
  set senhaHash(String value) => setField<String>('senha_hash', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  DateTime? get atualizadoEm => getField<DateTime>('atualizado_em');
  set atualizadoEm(DateTime? value) =>
      setField<DateTime>('atualizado_em', value);
}
