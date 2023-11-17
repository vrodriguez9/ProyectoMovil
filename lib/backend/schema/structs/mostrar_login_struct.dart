// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MostrarLoginStruct extends FFFirebaseStruct {
  MostrarLoginStruct({
    bool? mostrarLogin,
    String? categoria,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _mostrarLogin = mostrarLogin,
        _categoria = categoria,
        super(firestoreUtilData);

  // "mostrar_login" field.
  bool? _mostrarLogin;
  bool get mostrarLogin => _mostrarLogin ?? false;
  set mostrarLogin(bool? val) => _mostrarLogin = val;
  bool hasMostrarLogin() => _mostrarLogin != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  set categoria(String? val) => _categoria = val;
  bool hasCategoria() => _categoria != null;

  static MostrarLoginStruct fromMap(Map<String, dynamic> data) =>
      MostrarLoginStruct(
        mostrarLogin: data['mostrar_login'] as bool?,
        categoria: data['categoria'] as String?,
      );

  static MostrarLoginStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? MostrarLoginStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'mostrar_login': _mostrarLogin,
        'categoria': _categoria,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'mostrar_login': serializeParam(
          _mostrarLogin,
          ParamType.bool,
        ),
        'categoria': serializeParam(
          _categoria,
          ParamType.String,
        ),
      }.withoutNulls;

  static MostrarLoginStruct fromSerializableMap(Map<String, dynamic> data) =>
      MostrarLoginStruct(
        mostrarLogin: deserializeParam(
          data['mostrar_login'],
          ParamType.bool,
          false,
        ),
        categoria: deserializeParam(
          data['categoria'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MostrarLoginStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MostrarLoginStruct &&
        mostrarLogin == other.mostrarLogin &&
        categoria == other.categoria;
  }

  @override
  int get hashCode => const ListEquality().hash([mostrarLogin, categoria]);
}

MostrarLoginStruct createMostrarLoginStruct({
  bool? mostrarLogin,
  String? categoria,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MostrarLoginStruct(
      mostrarLogin: mostrarLogin,
      categoria: categoria,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MostrarLoginStruct? updateMostrarLoginStruct(
  MostrarLoginStruct? mostrarLoginStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    mostrarLoginStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMostrarLoginStructData(
  Map<String, dynamic> firestoreData,
  MostrarLoginStruct? mostrarLoginStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (mostrarLoginStruct == null) {
    return;
  }
  if (mostrarLoginStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && mostrarLoginStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final mostrarLoginStructData =
      getMostrarLoginFirestoreData(mostrarLoginStruct, forFieldValue);
  final nestedData =
      mostrarLoginStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      mostrarLoginStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMostrarLoginFirestoreData(
  MostrarLoginStruct? mostrarLoginStruct, [
  bool forFieldValue = false,
]) {
  if (mostrarLoginStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(mostrarLoginStruct.toMap());

  // Add any Firestore field values
  mostrarLoginStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMostrarLoginListFirestoreData(
  List<MostrarLoginStruct>? mostrarLoginStructs,
) =>
    mostrarLoginStructs
        ?.map((e) => getMostrarLoginFirestoreData(e, true))
        .toList() ??
    [];
