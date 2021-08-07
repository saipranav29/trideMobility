import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


const textInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  labelStyle: TextStyle(color: Colors.black),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(0.0)),
    borderSide: BorderSide(width: 0.5),
  ),
  focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(0.0)),
      borderSide: BorderSide(color: Color(0xFF75101D))),
  errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(0.0)),
      borderSide: BorderSide(color: Colors.redAccent)),
  focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(0.0)),
      borderSide: BorderSide(color: Colors.redAccent)),
);
