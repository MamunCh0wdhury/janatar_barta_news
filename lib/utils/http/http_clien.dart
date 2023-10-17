import 'dart:convert';
import 'package:http/http.dart' as http;

class ThttpHelper {
  static const String _baseUrl = ""; // Replace with your API baseurl

  /// -- Helper Method to make GET request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> post(
      String endpoint, dynamic data) async {
    final response = await http.post(Uri.parse('$_baseUrl/$endpoint'),
        body: json.encode(data), headers: {'Content-Type': 'application/json'});
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(Uri.parse('$_baseUrl/$endpoint'),
        body: json.encode(data), headers: {'Content-Type': 'application/json'});
    return _handleResponse(response);
  }

  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data:${response.statusCode}');
    }
  }
}
