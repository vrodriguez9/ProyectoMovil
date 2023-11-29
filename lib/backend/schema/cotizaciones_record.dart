import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CotizacionesRecord extends FirestoreRecord {
  CotizacionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreCliente" field.
  String? _nombreCliente;
  String get nombreCliente => _nombreCliente ?? '';
  bool hasNombreCliente() => _nombreCliente != null;

  // "nombreProducto" field.
  String? _nombreProducto;
  String get nombreProducto => _nombreProducto ?? '';
  bool hasNombreProducto() => _nombreProducto != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "mensaje" field.
  String? _mensaje;
  String get mensaje => _mensaje ?? '';
  bool hasMensaje() => _mensaje != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  void _initializeFields() {
    _nombreCliente = snapshotData['nombreCliente'] as String?;
    _nombreProducto = snapshotData['nombreProducto'] as String?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _mensaje = snapshotData['mensaje'] as String?;
    _estado = snapshotData['estado'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cotizaciones');

  static Stream<CotizacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CotizacionesRecord.fromSnapshot(s));

  static Future<CotizacionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CotizacionesRecord.fromSnapshot(s));

  static CotizacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CotizacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CotizacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CotizacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CotizacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CotizacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCotizacionesRecordData({
  String? nombreCliente,
  String? nombreProducto,
  int? cantidad,
  String? mensaje,
  String? estado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreCliente': nombreCliente,
      'nombreProducto': nombreProducto,
      'cantidad': cantidad,
      'mensaje': mensaje,
      'estado': estado,
    }.withoutNulls,
  );

  return firestoreData;
}

class CotizacionesRecordDocumentEquality
    implements Equality<CotizacionesRecord> {
  const CotizacionesRecordDocumentEquality();

  @override
  bool equals(CotizacionesRecord? e1, CotizacionesRecord? e2) {
    return e1?.nombreCliente == e2?.nombreCliente &&
        e1?.nombreProducto == e2?.nombreProducto &&
        e1?.cantidad == e2?.cantidad &&
        e1?.mensaje == e2?.mensaje &&
        e1?.estado == e2?.estado;
  }

  @override
  int hash(CotizacionesRecord? e) => const ListEquality().hash([
        e?.nombreCliente,
        e?.nombreProducto,
        e?.cantidad,
        e?.mensaje,
        e?.estado
      ]);

  @override
  bool isValidKey(Object? o) => o is CotizacionesRecord;
}
