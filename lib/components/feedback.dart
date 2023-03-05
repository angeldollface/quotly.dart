/*
QUOTLY.DART by Alexander Abraham, a.k.a. "Angel Dollface".
Licensed under the MIT license.
*/

import 'vspacer.dart';
import 'package:flutter/material.dart';

/// A class for a re-usable user
/// feedback widget.  "DRY" is important.
class FeedBackStatus extends StatelessWidget{

    /// The parameters this custom
    /// widget will accept.
    final String text;
    final double fontSize;
    final Color fontColor;
    final Widget iconChild;
    final double padding;
    final double size;
    final String fontFamily;
    final Color backgroundColor;

    /// Class constructor with
    /// parameters.
    FeedBackStatus(
        {
            required this.text,
            required this.fontFamily,
            required this.fontSize,
            required this.fontColor,
            required this.backgroundColor,
            required this.iconChild,
            required this.padding,
            required this.size
        }
    );

    /// Returning the widget tree from this
    /// class. The "build" method returns the
    /// widget tree.    
    @override
    Widget build(BuildContext context){
        return Scaffold(
            backgroundColor: this.backgroundColor,
            body: new Center(
                child: new Column(
                    children: <Widget> [
                        new VerticalSpacer(size: this.size),
                        this.iconChild,
                        new Padding(
                            padding: EdgeInsets.all(this.padding),
                            child: new Text(
                                this.text,
                                style: new TextStyle(
                                    color: this.fontColor,
                                    fontFamily: this.fontFamily,
                                    fontSize: this.fontSize
                                )
                            )
                        )
                    ]
                )
            )

        );
    }
}