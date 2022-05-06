import 'dart:io';

import 'package:http/http.dart' as http;

class Repository {

  // var baseUrl = 'http://gotcha.lutforrahman.com/api';
   String baseUrl = 'http://192.168.0.109/flutter-doctor-app/public/api';
  // var baseUrl = 'https://gotcha.lutforrahman.com/api';

   urlConvertToUri(String $url){
     return Uri.parse($url);
   }

  httpGet(String apiRoute, String token) async {
    // try {
    return await http.get(urlConvertToUri('$baseUrl/$apiRoute'),
        headers: {HttpHeaders.authorizationHeader: 'Bearer $token'});
    // } catch (exception) {
    //   print(exception.toString());
    // }
  }

  httpGetById(String apiRoute, id, String token) async {
    // try {
    print(this.baseUrl + '/' + apiRoute + '/' + id.toString());
    return await http.get(urlConvertToUri(baseUrl + '/' + apiRoute + '/' + id.toString()),
        headers: {HttpHeaders.authorizationHeader: 'Bearer $token'});
    // } catch (exception) {
    //   print(exception.toString());
    // }
  }

  // httpPost(String apiRoute, data, String token) async {
  //   // try {
  //   return await http.post(this.baseUrl + '/' + apiRoute,
  //       body: data,
  //       headers: {HttpHeaders.authorizationHeader: 'Bearer $token'});
  //   // } catch (exception) {
  //   //   print(exception.toString());
  //   // }
  // }

  // httpPostFCM(String apiRoute, data, String token) async {
  //   try {
  //     return await http.post(this.baseUrl + '/' + apiRoute,
  //         body: data,
  //         headers: <String, String>{
  //           'Content-Type': 'application/json',
  //           'Authorization': 'key=$token',
  //         });
  //   } catch (exception) {
  //     print(exception.toString());
  //   }
  // }

  // httpPut(String apiRoute, data, int id, String token) async {
  //   try {
  //     return await http.put(this.baseUrl + '/' + apiRoute + '/' + id.toString(),
  //         body: data,
  //         headers: {HttpHeaders.authorizationHeader: 'Bearer $token'});
  //   } catch (exception) {
  //     print(exception.toString());
  //   }
  // }

  // httpDelete(String apiRoute, int id, String token) async {
  //   try {
  //     return await http.delete(this.baseUrl + '/' + apiRoute + '/' + id.toString(),
  //         headers: {HttpHeaders.authorizationHeader: 'Bearer $token'});
  //   } catch (exception) {
  //     print(exception.toString());
  //   }
  // }
}