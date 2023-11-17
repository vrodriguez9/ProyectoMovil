import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'edit_element_catalog_widget.dart' show EditElementCatalogWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditElementCatalogModel
    extends FlutterFlowModel<EditElementCatalogWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ddCategoria widget.
  String? ddCategoriaValue;
  FormFieldController<String>? ddCategoriaValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txtTitulo widget.
  FocusNode? txtTituloFocusNode;
  TextEditingController? txtTituloController;
  String? Function(BuildContext, String?)? txtTituloControllerValidator;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionController;
  String? Function(BuildContext, String?)? txtDescripcionControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtTituloFocusNode?.dispose();
    txtTituloController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
