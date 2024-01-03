import 'dart:convert';

import 'package:test/test.dart';
import 'package:http/http.dart' as http;

// GOALS
//1.test asynchronous function
//2.Use mocks

class ReqResAPI {
  const ReqResAPI();

  Future<Map<String, String>> getAll(http.Client client) async {
    try {
      final response =
          await client.get(Uri.parse('https://reqres.in/api/users'));
      return jsonDecode(response.body);
    } catch (_) {
      rethrow;
    }
  }
}

void main() {}
