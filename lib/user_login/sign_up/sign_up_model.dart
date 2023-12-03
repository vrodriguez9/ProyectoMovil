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
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txtNombreCompleto widget.
  FocusNode? txtNombreCompletoFocusNode;
  TextEditingController? txtNombreCompletoController;
  String? Function(BuildContext, String?)? txtNombreCompletoControllerValidator;
  String? _txtNombreCompletoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio.';
    }

    if (val.length < 3) {
      return 'Nombre inválido.';
    }

    return null;
  }

  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoController;
  String? Function(BuildContext, String?)? txtCorreoControllerValidator;
  String? _txtCorreoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio.';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'El correo debe contener @, .com...';
    }
    return null;
  }

  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoController;
  String? Function(BuildContext, String?)? txtTelefonoControllerValidator;
  String? _txtTelefonoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio.';
    }

    if (val.length < 8) {
      return 'Número no válido.';
    }
    if (val.length > 8) {
      return 'Maximum 8 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for txtContrasenia widget.
  FocusNode? txtContraseniaFocusNode;
  TextEditingController? txtContraseniaController;
  late bool txtContraseniaVisibility;
  String? Function(BuildContext, String?)? txtContraseniaControllerValidator;
  String? _txtContraseniaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio.';
    }

    return null;
  }

  // State field(s) for txtRepetirContrasenia widget.
  FocusNode? txtRepetirContraseniaFocusNode;
  TextEditingController? txtRepetirContraseniaController;
  late bool txtRepetirContraseniaVisibility;
  String? Function(BuildContext, String?)?
      txtRepetirContraseniaControllerValidator;
  String? _txtRepetirContraseniaControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Repita la contraseña.';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtNombreCompletoControllerValidator =
        _txtNombreCompletoControllerValidator;
    txtCorreoControllerValidator = _txtCorreoControllerValidator;
    txtTelefonoControllerValidator = _txtTelefonoControllerValidator;
    txtContraseniaVisibility = false;
    txtContraseniaControllerValidator = _txtContraseniaControllerValidator;
    txtRepetirContraseniaVisibility = false;
    txtRepetirContraseniaControllerValidator =
        _txtRepetirContraseniaControllerValidator;
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
