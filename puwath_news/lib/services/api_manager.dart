import 'package:http/http.dart' as http;

class API_Manager {
  void getNews() {
    var client = https.client();
    client.get('Strings.news_url');
  }
}
