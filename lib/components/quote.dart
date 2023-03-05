/*
QUOTLY.DART by Alexander Abraham, a.k.a. "Angel Dollface".
Licensed under the MIT license.
*/

import 'package:flutter/material.dart';

/// A class for a re-usable quote
/// display widget.  "DRY" is important.
class Quote extends StatelessWidget {

    /// The parameters this custom
    /// widget will accept.
    final Color firstColor;
    final Color secondColor;
    final String quote;
    final double fontSize;
    final String fontFamily;
    final Color fontColor;

    /// Class constructor with
    /// parameters.
    Quote(
        {
            required this.firstColor,
            required this.secondColor,
            required this.quote,
            required this.fontSize,
            required this.fontFamily,
            required this.fontColor
        }
    );
    
    /// Returning the widget tree from this
    /// class. The "build" method returns the
    /// widget tree.
    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: new Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                            this.firstColor,
                            this.secondColor
                        ],
                    )
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: new Center(
                    child: new Text(
                        this.quote,
                        style: new TextStyle(
                            fontSize: this.fontSize,
                            fontFamily: this.fontFamily,
                            color: this.fontColor
                        )
                    )
                )
            )
        );
    }
}

