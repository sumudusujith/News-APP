import 'dart:convert';
import 'package:puwath_news/constants/strings.dart';
import 'package:puwath_news/models/newsinfo.dart';
import 'package:http/http.dart' as http;

class API_Manager {
  Future<Welcome> getNews() async {
    // ignore: non_constant_identifier_names
    var Client = http.Client();
    // ignore: avoid_init_to_null
    var newsWelcom = null;

    try {
      var response = await Client.get(Uri.parse(Strings.news_url));
      if (response.statusCode == 200) {
        var jsonString = response.body;

        var jsonMap = jsonDecode(jsonString);
        newsWelcom = Welcome.fromJson(jsonMap);
      }
    } catch (Exception) {
      return newsWelcom;
    }
    return newsWelcom;
  }
}
