// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VacinaDataStruct extends FFFirebaseStruct {
  VacinaDataStruct({
    int? vacinaId,
    String? dataAplicacao,
    String? doseTipo,
    int? postoId,
    String? lote,
    String? proxAplicacao,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _vacinaId = vacinaId,
        _dataAplicacao = dataAplicacao,
        _doseTipo = doseTipo,
        _postoId = postoId,
        _lote = lote,
        _proxAplicacao = proxAplicacao,
        super(firestoreUtilData);

  // "vacina_id" field.
  int? _vacinaId;
  int get vacinaId => _vacinaId ?? 0;
  set vacinaId(int? val) => _vacinaId = val;

  void incrementVacinaId(int amount) => vacinaId = vacinaId + amount;

  bool hasVacinaId() => _vacinaId != null;

  // "data_aplicacao" field.
  String? _dataAplicacao;
  String get dataAplicacao => _dataAplicacao ?? '';
  set dataAplicacao(String? val) => _dataAplicacao = val;

  bool hasDataAplicacao() => _dataAplicacao != null;

  // "dose_tipo" field.
  String? _doseTipo;
  String get doseTipo => _doseTipo ?? '';
  set doseTipo(String? val) => _doseTipo = val;

  bool hasDoseTipo() => _doseTipo != null;

  // "posto_id" field.
  int? _postoId;
  int get postoId => _postoId ?? 0;
  set postoId(int? val) => _postoId = val;

  void incrementPostoId(int amount) => postoId = postoId + amount;

  bool hasPostoId() => _postoId != null;

  // "lote" field.
  String? _lote;
  String get lote => _lote ?? '';
  set lote(String? val) => _lote = val;

  bool hasLote() => _lote != null;

  // "prox_aplicacao" field.
  String? _proxAplicacao;
  String get proxAplicacao => _proxAplicacao ?? '';
  set proxAplicacao(String? val) => _proxAplicacao = val;

  bool hasProxAplicacao() => _proxAplicacao != null;

  static VacinaDataStruct fromMap(Map<String, dynamic> data) =>
      VacinaDataStruct(
        vacinaId: castToType<int>(data['vacina_id']),
        dataAplicacao: data['data_aplicacao'] as String?,
        doseTipo: data['dose_tipo'] as String?,
        postoId: castToType<int>(data['posto_id']),
        lote: data['lote'] as String?,
        proxAplicacao: data['prox_aplicacao'] as String?,
      );

  static VacinaDataStruct? maybeFromMap(dynamic data) => data is Map
      ? VacinaDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'vacina_id': _vacinaId,
        'data_aplicacao': _dataAplicacao,
        'dose_tipo': _doseTipo,
        'posto_id': _postoId,
        'lote': _lote,
        'prox_aplicacao': _proxAplicacao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'vacina_id': serializeParam(
          _vacinaId,
          ParamType.int,
        ),
        'data_aplicacao': serializeParam(
          _dataAplicacao,
          ParamType.String,
        ),
        'dose_tipo': serializeParam(
          _doseTipo,
          ParamType.String,
        ),
        'posto_id': serializeParam(
          _postoId,
          ParamType.int,
        ),
        'lote': serializeParam(
          _lote,
          ParamType.String,
        ),
        'prox_aplicacao': serializeParam(
          _proxAplicacao,
          ParamType.String,
        ),
      }.withoutNulls;

  static VacinaDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      VacinaDataStruct(
        vacinaId: deserializeParam(
          data['vacina_id'],
          ParamType.int,
          false,
        ),
        dataAplicacao: deserializeParam(
          data['data_aplicacao'],
          ParamType.String,
          false,
        ),
        doseTipo: deserializeParam(
          data['dose_tipo'],
          ParamType.String,
          false,
        ),
        postoId: deserializeParam(
          data['posto_id'],
          ParamType.int,
          false,
        ),
        lote: deserializeParam(
          data['lote'],
          ParamType.String,
          false,
        ),
        proxAplicacao: deserializeParam(
          data['prox_aplicacao'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VacinaDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VacinaDataStruct &&
        vacinaId == other.vacinaId &&
        dataAplicacao == other.dataAplicacao &&
        doseTipo == other.doseTipo &&
        postoId == other.postoId &&
        lote == other.lote &&
        proxAplicacao == other.proxAplicacao;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([vacinaId, dataAplicacao, doseTipo, postoId, lote, proxAplicacao]);
}

VacinaDataStruct createVacinaDataStruct({
  int? vacinaId,
  String? dataAplicacao,
  String? doseTipo,
  int? postoId,
  String? lote,
  String? proxAplicacao,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VacinaDataStruct(
      vacinaId: vacinaId,
      dataAplicacao: dataAplicacao,
      doseTipo: doseTipo,
      postoId: postoId,
      lote: lote,
      proxAplicacao: proxAplicacao,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VacinaDataStruct? updateVacinaDataStruct(
  VacinaDataStruct? vacinaData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    vacinaData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVacinaDataStructData(
  Map<String, dynamic> firestoreData,
  VacinaDataStruct? vacinaData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (vacinaData == null) {
    return;
  }
  if (vacinaData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && vacinaData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final vacinaDataData = getVacinaDataFirestoreData(vacinaData, forFieldValue);
  final nestedData = vacinaDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = vacinaData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVacinaDataFirestoreData(
  VacinaDataStruct? vacinaData, [
  bool forFieldValue = false,
]) {
  if (vacinaData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(vacinaData.toMap());

  // Add any Firestore field values
  vacinaData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVacinaDataListFirestoreData(
  List<VacinaDataStruct>? vacinaDatas,
) =>
    vacinaDatas?.map((e) => getVacinaDataFirestoreData(e, true)).toList() ?? [];
