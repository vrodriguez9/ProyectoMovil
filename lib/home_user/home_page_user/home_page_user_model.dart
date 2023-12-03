import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home_admin/search_results/search_results_widget.dart';
import 'home_page_user_widget.dart' show HomePageUserWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageUserModel extends FlutterFlowModel<HomePageUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtBuscar widget.
  FocusNode? txtBuscarFocusNode;
  TextEditingController? txtBuscarController;
  String? Function(BuildContext, String?)? txtBuscarControllerValidator;

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
