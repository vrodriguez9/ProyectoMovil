import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_appointment_user_widget.dart' show EditAppointmentUserWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditAppointmentUserModel
    extends FlutterFlowModel<EditAppointmentUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtDetails widget.
  FocusNode? txtDetailsFocusNode;
  TextEditingController? txtDetailsController;
  String? Function(BuildContext, String?)? txtDetailsControllerValidator;
  String? _txtDetailsControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio.';
    }

    return null;
  }

  // State field(s) for txtDateTime widget.
  FocusNode? txtDateTimeFocusNode;
  TextEditingController? txtDateTimeController;
  String? Function(BuildContext, String?)? txtDateTimeControllerValidator;
  DateTime? datePicked;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for txtUserName widget.
  FocusNode? txtUserNameFocusNode;
  TextEditingController? txtUserNameController;
  String? Function(BuildContext, String?)? txtUserNameControllerValidator;
  String? _txtUserNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio.';
    }

    if (val.length < 3) {
      return 'Nombre no válido.';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtDetailsControllerValidator = _txtDetailsControllerValidator;
    txtUserNameControllerValidator = _txtUserNameControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    txtDetailsFocusNode?.dispose();
    txtDetailsController?.dispose();

    txtDateTimeFocusNode?.dispose();
    txtDateTimeController?.dispose();

    txtUserNameFocusNode?.dispose();
    txtUserNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
