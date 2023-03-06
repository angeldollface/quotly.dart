/*
QUOTLY.DART by Alexander Abraham, a.k.a. "Angel Dollface".
Licensed under the MIT license.
*/

/// Importing the Dio API.
import 'package:dio/dio.dart';

/// Importing Flutter's API.
import 'package:flutter/material.dart';

/// Misc typed variables.
const bool isFalse = false;
Dio dioInstance = new Dio();

/// Color variables.
const Color mainColor = Color(0xFFFFFFFF);
const Color accentColor = Color(0xFF000000);

/// Numeric layout variables.
const double sizeFactor = 8;
const double stdPadding = 10.0;
const double spacingFactor = 5;
const double stdFontSize = 25.0;
const double stdElevation = 3.0;

/// String variables.
const String errorMsg = 'Error!';
const String feedbackFont = 'PSB';
const String loadingMsg = 'Loading...';
const String stdFont = 'GaramondItalic';
const String feedbackMsg = 'Quote copied!';
const String apiURL = 'https://angeldollface.art/assets/apis/json/quotly.json';