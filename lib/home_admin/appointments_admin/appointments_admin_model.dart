import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'appointments_admin_widget.dart' show AppointmentsAdminWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppointmentsAdminModel extends FlutterFlowModel<AppointmentsAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtBuscar widget.
  FocusNode? txtBuscarFocusNode;
  TextEditingController? txtBuscarController;
  String? Function(BuildContext, String?)? txtBuscarControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtBuscarFocusNode?.dispose();
    txtBuscarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
