import 'modal.dart';
import 'package:http/http.dart' as http;

class remot {
  Future<List<Post>?> getcall() async {
    var clint = http.Client();
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var responce = await clint.get(uri);
    if (responce.statusCode == 200) {
      var json = responce.body;

      return postFromJson(json);
    }
  }
}
