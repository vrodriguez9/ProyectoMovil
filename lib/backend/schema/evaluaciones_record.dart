import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EvaluacionesRecord extends FirestoreRecord {
  EvaluacionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "idCotizacion" field.
  String? _idCotizacion;
  String get idCotizacion => _idCotizacion ?? '';
  bool hasIdCotizacion() => _idCotizacion != null;

  // "textoEvaluacion" field.
  String? _textoEvaluacion;
  String get textoEvaluacion => _textoEvaluacion ?? '';
  bool hasTextoEvaluacion() => _textoEvaluacion != null;

  // "calificacion" field.
  double? _calificacion;
  double get calificacion => _calificacion ?? 0.0;
  bool hasCalificacion() => _calificacion != null;

  // "fechaHora" field.
  DateTime? _fechaHora;
  DateTime? get fechaHora => _fechaHora;
  bool hasFechaHora() => _fechaHora != null;

  // "nombreUsuario" field.
  String? _nombreUsuario;
  String get nombreUsuario => _nombreUsuario ?? '';
  bool hasNombreUsuario() => _nombreUsuario != null;

  void _initializeFields() {
    _idCotizacion = snapshotData['idCotizacion'] as String?;
    _textoEvaluacion = snapshotData['textoEvaluacion'] as String?;
    _calificacion = castToType<double>(snapshotData['calificacion']);
    _fechaHora = snapshotData['fechaHora'] as DateTime?;
    _nombreUsuario = snapshotData['nombreUsuario'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('evaluaciones');

  static Stream<EvaluacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EvaluacionesRecord.fromSnapshot(s));

  static Future<EvaluacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EvaluacionesRecord.fromSnapshot(s));

  static EvaluacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EvaluacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EvaluacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EvaluacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EvaluacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EvaluacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEvaluacionesRecordData({
  String? idCotizacion,
  String? textoEvaluacion,
  double? calificacion,
  DateTime? fechaHora,
  String? nombreUsuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idCotizacion': idCotizacion,
      'textoEvaluacion': textoEvaluacion,
      'calificacion': calificacion,
      'fechaHora': fechaHora,
      'nombreUsuario': nombreUsuario,
    }.withoutNulls,
  );

  return firestoreData;
}

class EvaluacionesRecordDocumentEquality
    implements Equality<EvaluacionesRecord> {
  const EvaluacionesRecordDocumentEquality();

  @override
  bool equals(EvaluacionesRecord? e1, EvaluacionesRecord? e2) {
    return e1?.idCotizacion == e2?.idCotizacion &&
        e1?.textoEvaluacion == e2?.textoEvaluacion &&
        e1?.calificacion == e2?.calificacion &&
        e1?.fechaHora == e2?.fechaHora &&
        e1?.nombreUsuario == e2?.nombreUsuario;
  }

  @override
  int hash(EvaluacionesRecord? e) => const ListEquality().hash([
        e?.idCotizacion,
        e?.textoEvaluacion,
        e?.calificacion,
        e?.fechaHora,
        e?.nombreUsuario
      ]);

  @override
  bool isValidKey(Object? o) => o is EvaluacionesRecord;
}
