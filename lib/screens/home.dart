/*
QUOTLY.DART by Alexander Abraham, a.k.a. "Angel Dollface".
Licensed under the MIT license.
*/

/// Importing app-wide variables.
import '../vars.dart';

/// Importing the data handler.
import '../utils/data.dart';

/// Importing the color handler.
import '../utils/colors.dart';

/// Importing the main widget.
import '../components/quote.dart';

/// Importing the re-usable user feedback
/// widgets.
import '../components/feedback.dart';

/// Importing Flutter's APIs.
import 'package:flutter/material.dart';

/// Importing loading-animation widgets.
import 'package:loading_animations/loading_animations.dart';

/// The class for the main widget.
/// We need to make this stateful 
/// because the data will change.
class Home extends StatefulWidget{

    /// We need an API handler
    /// instance.
    final APIHandler apiHandler;

    /// Supplying the API handler
    /// instance as a parameter.
    Home(
        {
            required this.apiHandler
        }
    );

    /// Instantiating the stateful
    /// aspect.
    State<Home> createState(){
        return HomeState();
    }

}

/// The class to bind state and wiget tree
/// together.
class HomeState extends State<Home> {

    /// Instantiating the stateful data.
    /// This will be populated later.
    late final Future<Map<String,dynamic>> quotes;

    /// Loading the asynchronous data into
    /// the "quotes" field.
    @override
    void initState(){
        super.initState();
        quotes = widget.apiHandler.readData();
    }

    /// The main widget tree method, will handle stateful
    /// asynchronous data.
    @override
    Widget build(BuildContext context){

        /// A controller to handle vertical page swiping.
        PageController controller = new PageController(initialPage: 1);

        /// A widget that handles incoming
        /// asynchronous data.
        return FutureBuilder<Map<String, dynamic>>(
            future: quotes,
            builder: (
                BuildContext context,
                AsyncSnapshot<Map<String, dynamic>> snapshot
            ){

                /// We return a loading screen if the data is still
                /// coming in.
                if (snapshot.connectionState == ConnectionState.waiting){
                    return FeedBackStatus(
                        text: loadingMsg,
                        fontFamily: feedbackFont,
                        fontSize: stdFontSize,
                        fontColor: accentColor,
                        backgroundColor: mainColor,
                        iconChild: LoadingBouncingGrid.circle(
                            size: MediaQuery.of(context).size.width/sizeFactor,
                            backgroundColor: accentColor,
                            duration: Duration(milliseconds: 500),
                        ),
                        padding: stdPadding,
                        size: MediaQuery.of(context).size.height/spacingFactor
                    );
                }
                else {

                    /// We return an error screen if the data
                    /// cannot be fetched.
                    if (snapshot.hasError){
                        return FeedBackStatus(
                            text: errorMsg,
                            fontFamily: feedbackFont,
                            fontSize: stdFontSize,
                            fontColor: accentColor,
                            backgroundColor: mainColor,
                            iconChild: new Icon(
                                Icons.warning_rounded,
                                size: MediaQuery.of(context).size.width/sizeFactor,
                                color: accentColor
                            ),
                            padding: stdPadding,
                            size: MediaQuery.of(context).size.height/spacingFactor
                        );
                    }
                    else {
                        
                        /// We return a page builder with the scrollable quotes
                        /// if the data is has come in and has no errors.
                        return PageView.builder(
                            controller: controller,
                            itemCount: snapshot.data!.length!,
                            itemBuilder: (context, index){
                                Map<String, dynamic> data = snapshot.data!;
                                String key = data.keys.elementAt(index)!;
                                String imageURL = data[key][1]!;
                                String quote = data[key][0]!;
                                return new Quote(
                                    buttonPadding: stdPadding,
                                    quote: quote,
                                    fontSize: stdFontSize,
                                    fontFamily: stdFont,
                                    fontColor: mainColor,
                                    imageURL: imageURL,
                                    buttonColor: accentColor,
                                    feedbackMsg: feedbackMsg,
                                    color: accentColor,
                                    elevation: stdElevation,
                                    feedbackPadding: stdPadding
                                );
                            },
                            scrollDirection: Axis.vertical
                        );
                    }
                }
            }
        );
    }
}