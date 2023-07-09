import 'package:flutter/material.dart';

showSnack(context, Text) {
  var snackBar = SnackBar(content: Text(Text));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}