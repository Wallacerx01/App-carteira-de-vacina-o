import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnderecosMapaRecord extends FirestoreRecord {
  EnderecosMapaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "enderecoCompleto" field.
  String? _enderecoCompleto;
  String get enderecoCompleto => _enderecoCompleto ?? '';
  bool hasEnderecoCompleto() => _enderecoCompleto != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "latLng" field.
  LatLng? _latLng;
  LatLng? get latLng => _latLng;
  bool hasLatLng() => _latLng != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  void _initializeFields() {
    _enderecoCompleto = snapshotData['enderecoCompleto'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _estado = snapshotData['estado'] as String?;
    _latLng = snapshotData['latLng'] as LatLng?;
    _endereco = snapshotData['endereco'] as String?;
    _cep = snapshotData['cep'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('enderecos_mapa');

  static Stream<EnderecosMapaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EnderecosMapaRecord.fromSnapshot(s));

  static Future<EnderecosMapaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EnderecosMapaRecord.fromSnapshot(s));

  static EnderecosMapaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EnderecosMapaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EnderecosMapaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EnderecosMapaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EnderecosMapaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EnderecosMapaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEnderecosMapaRecordData({
  String? enderecoCompleto,
  String? bairro,
  String? estado,
  LatLng? latLng,
  String? endereco,
  String? cep,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'enderecoCompleto': enderecoCompleto,
      'bairro': bairro,
      'estado': estado,
      'latLng': latLng,
      'endereco': endereco,
      'cep': cep,
    }.withoutNulls,
  );

  return firestoreData;
}

class EnderecosMapaRecordDocumentEquality
    implements Equality<EnderecosMapaRecord> {
  const EnderecosMapaRecordDocumentEquality();

  @override
  bool equals(EnderecosMapaRecord? e1, EnderecosMapaRecord? e2) {
    return e1?.enderecoCompleto == e2?.enderecoCompleto &&
        e1?.bairro == e2?.bairro &&
        e1?.estado == e2?.estado &&
        e1?.latLng == e2?.latLng &&
        e1?.endereco == e2?.endereco &&
        e1?.cep == e2?.cep;
  }

  @override
  int hash(EnderecosMapaRecord? e) => const ListEquality().hash([
        e?.enderecoCompleto,
        e?.bairro,
        e?.estado,
        e?.latLng,
        e?.endereco,
        e?.cep
      ]);

  @override
  bool isValidKey(Object? o) => o is EnderecosMapaRecord;
}
