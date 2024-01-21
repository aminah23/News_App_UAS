import 'dart:convert';
import 'package:minah_app/models/article_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final endPointUrl =
      "https://newsapi.org/v2/everything?q=otomotive&apiKey=50547ccb6d9d4b6596c3feed6f1d912b";

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
