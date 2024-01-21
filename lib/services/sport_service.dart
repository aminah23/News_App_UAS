import 'dart:convert';
import 'package:minah_app/models/article_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final endPointUrl =
      "https://newsapi.org/v2/everything?q=sport&apiKey=09cd9408d70945e8bda9199f8bfb8c7a";

  Future<List<Article>> getArticle() async {
    final response = await http.get(Uri.parse(endPointUrl));

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);

      List<dynamic> body = json['articles'];

      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw Exception("Tidak dapat mengambil data");
    }
  }
}
