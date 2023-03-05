/*
QUOTLY.DART by Alexander Abraham, a.k.a. "Angel Dollface".
Licensed under the MIT license.
*/

/// Importing app-wide variables.
import 'vars.dart';

/// Importing the "APIHandler" class.
import '../utils/data.dart';

/// Importing the main widget.
import '../screens/home.dart';

/// Importing Flutter's APIs.
import 'package:flutter/material.dart';

void main(){

    /// Running our app.
    runApp(

        /// Calling the main class for material
        /// design.
        new MaterialApp(

            /// No debug banner.
            debugShowCheckedModeBanner: isFalse,

            /// Calling the main widget and
            /// supplying the needed parameters.
            home: new Home(
                apiHandler: new APIHandler(
                    dioInstance: dioInstance,
                    apiURL: apiURL
                ),
            )

        )
        
    );
}