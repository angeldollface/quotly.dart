/*
QUOTLY.DART by Alexander Abraham, a.k.a. "Angel Dollface".
Licensed under the MIT license.
*/

/// Importing Dio so that
/// we can use the the API.
import 'package:dio/dio.dart';

/// A class to fetch remote data.
class APIHandler {

  /// We need an instance
  /// of Dio and the URL
  /// to the JSON API.
  final Dio dioInstance;
  final String apiURL;

  /// Making the two above
  /// class parameters.
  APIHandler(
    {
      required this.dioInstance,
      required this.apiURL
    }
  );
  
  /// Fetching data from the supplied URL.
  Future<Map<String, dynamic>> get responseData async {
    try {
      Response response = await this.dioInstance.get(
        this.apiURL,
        options: Options(
          responseType: ResponseType.json,
          followRedirects: true,
          validateStatus: (status) { return status! < 500; }
        ),
      );
      return response.data;
    } catch (e) {
      Response response = await this.dioInstance.get(
        this.apiURL,
        options: Options(
          responseType: ResponseType.json,
          followRedirects: true,
          validateStatus: (status) { return status! < 500; }
        ),
      );
      return response.data;
    }
  }

  /// An exposed method to call for widgets.
  Future<Map<String,dynamic>> readData() async {
    Future<Map<String, dynamic>> data = responseData;
    return data;
  }
  
}
