import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:peliculas/src/models/pelicula_model.dart';

class PeliculasProvider {
  String _apikey = '5db3e6aa0bd27d90a5237771831ff0ed';
  String _url = 'api.themoviedb.org';
  String _language = 'en-US';

  Future<List<Pelicula>> getEnCines() async {
    final url = Uri.https(
      _url,
      '3/movie/now_playing',
      {
        'api_key': _apikey,
        'language': _language,
      },
    );
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final peliculas = new Peliculas.fromJsonList(decodedData['results']);

//    print('--------');
//    print(decodedData['results'].length);
//    for (var item in decodedData['results']) {
//      print(item['poster_path']);
//    }
//    print('--------');

    return peliculas.items;
  }
}
