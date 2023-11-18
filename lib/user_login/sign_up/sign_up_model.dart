import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txtNombreCompleto widget.
  FocusNode? txtNombreCompletoFocusNode;
  TextEditingController? txtNombreCompletoController;
  String? Function(BuildContext, String?)? txtNombreCompletoControllerValidator;
  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoController;
  String? Function(BuildContext, String?)? txtCorreoControllerValidator;
  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoController;
  String? Function(BuildContext, String?)? txtTelefonoControllerValidator;
  // State field(s) for txtContrasenia widget.
  FocusNode? txtContraseniaFocusNode;
  TextEditingController? txtContraseniaController;
  late bool txtContraseniaVisibility;
  String? Function(BuildContext, String?)? txtContraseniaControllerValidator;
  // State field(s) for txtRepetirContrasenia widget.
  FocusNode? txtRepetirContraseniaFocusNode;
  TextEditingController? txtRepetirContraseniaController;
  late bool txtRepetirContraseniaVisibility;
  String? Function(BuildContext, String?)?
      txtRepetirContraseniaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtContraseniaVisibility = false;
    txtRepetirContraseniaVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    txtNombreCompletoFocusNode?.dispose();
    txtNombreCompletoController?.dispose();

    txtCorreoFocusNode?.dispose();
    txtCorreoController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoController?.dispose();

    txtContraseniaFocusNode?.dispose();
    txtContraseniaController?.dispose();

    txtRepetirContraseniaFocusNode?.dispose();
    txtRepetirContraseniaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
