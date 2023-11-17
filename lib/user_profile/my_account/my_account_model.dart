import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'my_account_widget.dart' show MyAccountWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyAccountModel extends FlutterFlowModel<MyAccountWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txt_correo widget.
  FocusNode? txtCorreoFocusNode1;
  TextEditingController? txtCorreoController1;
  String? Function(BuildContext, String?)? txtCorreoController1Validator;
  // State field(s) for txt_correo widget.
  FocusNode? txtCorreoFocusNode2;
  TextEditingController? txtCorreoController2;
  String? Function(BuildContext, String?)? txtCorreoController2Validator;
  // State field(s) for txt_correo widget.
  FocusNode? txtCorreoFocusNode3;
  TextEditingController? txtCorreoController3;
  String? Function(BuildContext, String?)? txtCorreoController3Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtCorreoFocusNode1?.dispose();
    txtCorreoController1?.dispose();

    txtCorreoFocusNode2?.dispose();
    txtCorreoController2?.dispose();

    txtCorreoFocusNode3?.dispose();
    txtCorreoController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
