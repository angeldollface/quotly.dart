/*
QUOTLY.DART by Alexander Abraham, a.k.a. "Angel Dollface".
Licensed under the MIT license.
*/

/// Importing Flutter's OS API.
import 'package:flutter/services.dart';

/// Importing Flutter's API.
import 'package:flutter/material.dart';

/// A class for a re-usable quote
/// display widget.  "DRY" is important.
class Quote extends StatelessWidget {

    /// The parameters this custom
    /// widget will accept.
    final String quote;
    final double fontSize;
    final String fontFamily;
    final Color fontColor;
    final String imageURL;
    final Color buttonColor;
    final double buttonPadding;
    final String feedbackMsg;
    final double feedbackPadding;
    final Color color;
    final double elevation;

    /// Class constructor with
    /// parameters.
    Quote(
        {
            required this.quote,
            required this.fontSize,
            required this.fontFamily,
            required this.fontColor,
            required this.imageURL,
            required this.buttonColor,
            required this.buttonPadding,
            required this.feedbackMsg,
            required this.color,
            required this.elevation,
            required this.feedbackPadding
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
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(this.imageURL),
                    ),
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
            ),
            floatingActionButton: new Padding(
                padding: EdgeInsets.all(this.buttonPadding),
                child:FloatingActionButton(
                    onPressed: () async {
                        await Clipboard.setData(
                            ClipboardData(
                            text: this.quote
                            )
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                elevation: this.elevation,
                                backgroundColor: this.color,
                                content: new Padding(
                                    padding: EdgeInsets.all(this.feedbackPadding),
                                    child: new Text(
                                        this.feedbackMsg,
                                        style: new TextStyle(
                                            color: this.fontColor,
                                            fontFamily: this.fontFamily,
                                            fontSize: this.fontSize
                                        )
                                    )
                                )
                            )
                        );
                    },
                    backgroundColor: this.buttonColor,
                    child: new Padding(
                        padding: EdgeInsets.all(this.buttonPadding),
                        child:const Icon(
                            Icons.content_copy_outlined
                        )
                    )
                )
            )
        );
    }
}

