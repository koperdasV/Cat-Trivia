import 'package:cat_trivia/data/model/fact_model.dart';
import 'package:http/http.dart' as http;

class FactRepository {
  final String _url = 'https://cat-fact.herokuapp.com/facts/random';

  Future<FactModel> getFact() async {
    final response = await http.get(Uri.parse(_url));
    if (response.statusCode == 200) {
      return factModelFromJson(response.body);
    } else {
      throw Exception('Failed to load fact');
    }
  }
}
