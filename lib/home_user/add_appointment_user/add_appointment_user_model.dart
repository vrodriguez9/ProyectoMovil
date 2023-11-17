import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_appointment_user_widget.dart' show AddAppointmentUserWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddAppointmentUserModel
    extends FlutterFlowModel<AddAppointmentUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtDetails widget.
  FocusNode? txtDetailsFocusNode;
  TextEditingController? txtDetailsController;
  String? Function(BuildContext, String?)? txtDetailsControllerValidator;
  DateTime? datePicked;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for txtUserName widget.
  FocusNode? txtUserNameFocusNode;
  TextEditingController? txtUserNameController;
  String? Function(BuildContext, String?)? txtUserNameControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtDetailsFocusNode?.dispose();
    txtDetailsController?.dispose();

    txtUserNameFocusNode?.dispose();
    txtUserNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
