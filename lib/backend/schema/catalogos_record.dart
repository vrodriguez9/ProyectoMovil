import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CatalogosRecord extends FirestoreRecord {
  CatalogosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _categoria = snapshotData['categoria'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('catalogos');

  static Stream<CatalogosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CatalogosRecord.fromSnapshot(s));

  static Future<CatalogosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CatalogosRecord.fromSnapshot(s));

  static CatalogosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CatalogosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CatalogosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CatalogosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CatalogosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CatalogosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCatalogosRecordData({
  String? titulo,
  String? descripcion,
  String? imagen,
  String? categoria,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'descripcion': descripcion,
      'imagen': imagen,
      'categoria': categoria,
    }.withoutNulls,
  );

  return firestoreData;
}

class CatalogosRecordDocumentEquality implements Equality<CatalogosRecord> {
  const CatalogosRecordDocumentEquality();

  @override
  bool equals(CatalogosRecord? e1, CatalogosRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.imagen == e2?.imagen &&
        e1?.categoria == e2?.categoria;
  }

  @override
  int hash(CatalogosRecord? e) => const ListEquality()
      .hash([e?.titulo, e?.descripcion, e?.imagen, e?.categoria]);

  @override
  bool isValidKey(Object? o) => o is CatalogosRecord;
}
