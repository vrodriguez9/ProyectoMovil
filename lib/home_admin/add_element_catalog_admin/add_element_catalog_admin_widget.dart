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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_element_catalog_admin_model.dart';
export 'add_element_catalog_admin_model.dart';

class AddElementCatalogAdminWidget extends StatefulWidget {
  const AddElementCatalogAdminWidget({Key? key}) : super(key: key);

  @override
  _AddElementCatalogAdminWidgetState createState() =>
      _AddElementCatalogAdminWidgetState();
}

class _AddElementCatalogAdminWidgetState
    extends State<AddElementCatalogAdminWidget> {
  late AddElementCatalogAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddElementCatalogAdminModel());

    _model.txtTituloController ??= TextEditingController();
    _model.txtTituloFocusNode ??= FocusNode();

    _model.txtDescripcionController ??= TextEditingController();
    _model.txtDescripcionFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).tertiary,
          automaticallyImplyLeading: false,
          leading: Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: FlutterFlowIconButton(
              borderColor: Color(0x00B0E2FF),
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: MediaQuery.sizeOf(context).width * 0.15,
              fillColor: Color(0x00B0E2FF),
              icon: Icon(
                Icons.arrow_back,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () async {
                context.pushNamed('HomePageAdmin');
              },
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(0.00, 0.00),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('AddElementCatalogAdmin');
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/LogoRotulosBlack.png',
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 45.0,
                  fit: BoxFit.contain,
                  alignment: Alignment(0.00, 0.00),
                ),
              ),
            ),
          ),
          actions: [
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: AuthUserStreamWidget(
                  builder: (context) => InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('MyAccount');
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.1,
                      height: MediaQuery.sizeOf(context).width * 0.1,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        currentUserPhoto,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 0.04,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryText,
                        border: Border.all(
                          color: Color(0x00B0E2FF),
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          'Agregar nuevo catalogo',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Barlow',
                                color: FlutterFlowTheme.of(context).primary,
                                fontSize: 25.0,
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.italic,
                                useGoogleFonts: false,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 520.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Stack(
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: 200.0,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.09,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(20.0),
                                                topRight: Radius.circular(20.0),
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.00, 0.00),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .ddCategoriaValueController ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: [
                                                      'Diseño',
                                                      'Ofertas',
                                                      'Rotulacion',
                                                      'Construccion'
                                                    ],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .ddCategoriaValue =
                                                            val),
                                                    width: 300.0,
                                                    height: 50.0,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        'Selecciona una Categoria',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                    borderWidth: 2.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 4.0,
                                                                16.0, 4.0),
                                                    hidesUnderline: true,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 102.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 5.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    // CargarImagen
                                                    final selectedMedia =
                                                        await selectMediaWithSourceBottomSheet(
                                                      context: context,
                                                      allowPhoto: true,
                                                    );
                                                    if (selectedMedia != null &&
                                                        selectedMedia.every((m) =>
                                                            validateFileFormat(
                                                                m.storagePath,
                                                                context))) {
                                                      setState(() => _model
                                                              .isDataUploading =
                                                          true);
                                                      var selectedUploadedFiles =
                                                          <FFUploadedFile>[];

                                                      var downloadUrls =
                                                          <String>[];
                                                      try {
                                                        selectedUploadedFiles =
                                                            selectedMedia
                                                                .map((m) =>
                                                                    FFUploadedFile(
                                                                      name: m
                                                                          .storagePath
                                                                          .split(
                                                                              '/')
                                                                          .last,
                                                                      bytes: m
                                                                          .bytes,
                                                                      height: m
                                                                          .dimensions
                                                                          ?.height,
                                                                      width: m
                                                                          .dimensions
                                                                          ?.width,
                                                                      blurHash:
                                                                          m.blurHash,
                                                                    ))
                                                                .toList();

                                                        downloadUrls =
                                                            (await Future.wait(
                                                          selectedMedia.map(
                                                            (m) async =>
                                                                await uploadData(
                                                                    m.storagePath,
                                                                    m.bytes),
                                                          ),
                                                        ))
                                                                .where((u) =>
                                                                    u != null)
                                                                .map((u) => u!)
                                                                .toList();
                                                      } finally {
                                                        _model.isDataUploading =
                                                            false;
                                                      }
                                                      if (selectedUploadedFiles
                                                                  .length ==
                                                              selectedMedia
                                                                  .length &&
                                                          downloadUrls.length ==
                                                              selectedMedia
                                                                  .length) {
                                                        setState(() {
                                                          _model.uploadedLocalFile =
                                                              selectedUploadedFiles
                                                                  .first;
                                                          _model.uploadedFileUrl =
                                                              downloadUrls
                                                                  .first;
                                                        });
                                                      } else {
                                                        setState(() {});
                                                        return;
                                                      }
                                                    }
                                                  },
                                                  text: 'Foto',
                                                  icon: Icon(
                                                    Icons.add_circle_outline,
                                                    size: 15.0,
                                                  ),
                                                  options: FFButtonOptions(
                                                    height: 40.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                        ),
                                                    elevation: 3.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  'https://picsum.photos/seed/248/600',
                                                  width: 300.0,
                                                  height: 200.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 365.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      35.0, 0.0, 35.0, 0.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.txtTituloController,
                                                focusNode:
                                                    _model.txtTituloFocusNode,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Titulo',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 15.0,
                                                      ),
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontSize: 15.0,
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 15.0,
                                                        ),
                                                textAlign: TextAlign.start,
                                                validator: _model
                                                    .txtTituloControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 430.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      35.0, 0.0, 35.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .txtDescripcionController,
                                                focusNode: _model
                                                    .txtDescripcionFocusNode,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Descripcion',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 15.0,
                                                      ),
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontSize: 15.0,
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25.0),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 15.0,
                                                        ),
                                                textAlign: TextAlign.start,
                                                maxLines: 5,
                                                validator: _model
                                                    .txtDescripcionControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          await CatalogosRecord.collection
                              .doc()
                              .set(createCatalogosRecordData(
                                titulo: _model.txtTituloController.text,
                                descripcion:
                                    _model.txtDescripcionController.text,
                                imagen: _model.uploadedFileUrl,
                                categoria: _model.ddCategoriaValue,
                              ));
                        },
                        text: 'Aceptar',
                        icon: Icon(
                          Icons.check,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              35.0, 0.0, 35.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).success,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).success,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
