import '../database.dart';

class PostosVacinacaoTable extends SupabaseTable<PostosVacinacaoRow> {
  @override
  String get tableName => 'postos_vacinacao';

  @override
  PostosVacinacaoRow createRow(Map<String, dynamic> data) =>
      PostosVacinacaoRow(data);
}

class PostosVacinacaoRow extends SupabaseDataRow {
  PostosVacinacaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PostosVacinacaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);
}
