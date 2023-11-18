import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoController;
  String? Function(BuildContext, String?)? txtCorreoControllerValidator;
  // State field(s) for txtContrasenia widget.
  FocusNode? txtContraseniaFocusNode;
  TextEditingController? txtContraseniaController;
  late bool txtContraseniaVisibility;
  String? Function(BuildContext, String?)? txtContraseniaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtContraseniaVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    txtCorreoFocusNode?.dispose();
    txtCorreoController?.dispose();

    txtContraseniaFocusNode?.dispose();
    txtContraseniaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
