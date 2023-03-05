/*
QUOTLY.DART by Alexander Abraham, a.k.a. "Angel Dollface".
Licensed under the MIT license.
*/

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

const bool isFalse = false;
Dio dioInstance = new Dio();

const Color mainColor = Color(0xFFFFFFFF);
const Color accentColor = Color(0xFF000000);

const double sizeFactor = 4;
const double stdPadding = 10.0;
const double spacingFactor = 8;
const double stdFontSize = 25.0;

const String stdFont = 'PSB';
const String errorMsg = 'Error!';
const String loadingMsg = 'Loading...';
const String apiURL = 'https://angeldollface.art/assets/apis/json/quotly.json';