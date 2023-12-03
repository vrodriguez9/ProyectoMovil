import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

DateTime? obtenerFecha() {
  // obten de un dropdown si la seleccion es Pasadas que retorne la fecha y ahora actual
  DateTime? fecha;
  String dropdownValue = 'Pasadas';

  if (dropdownValue == 'Pasadas') {
    fecha = DateTime.now();
  } else {
    fecha = null;
  }

  return fecha;
}
