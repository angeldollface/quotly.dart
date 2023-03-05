/*
QUOTLY.DART by Alexander Abraham, a.k.a. "Angel Dollface".
Licensed under the MIT license.
*/

/// Importing Flutter's APIs.
import 'package:flutter/material.dart';

/// Converts a hexadecimal string
/// to a Flutter color.
Color fromString(String code){
    return new Color(
        int.parse(code.substring(1, 6), radix: 16) + 0xFF000000
    );
}