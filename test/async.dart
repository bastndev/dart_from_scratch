import 'dart:convert';

import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
// GOALS
//1.test asynchronous function
//2.Use mocks

class ReqResAPI {
  const ReqResAPI();

  Future<Map<String, dynamic>> getAll(http.Client client) async {
    try {
      final response =
          await client.get(Uri.parse('https://reqres.in/api/users'));
      return jsonDecode(response.body);
    } catch (_) {
      rethrow;
    }
  }
}

void main() {
  test('Get All', () async {
    final api = ReqResAPI();
    final response = await api.getAll(getClient());
    expect(response, contains('data'));
    expect(response, containsPair('page', 1));
    //NO es buena practica hace test en el HTTP ya que el servidor puede estar caido
  });
}

//-TODO:2.Use mocks

http_testing.MockClient getClient() {
  return http_testing.MockClient((request) async {
    return http.Response(jsonEncode(reqResMockResponse), 200);
  });
}

final reqResMockResponse = {
  "page": 1,
  "per_page": 6,
  "total": 12,
  "total_pages": 2,
  "data": [
    {
      "id": 1,
      "email": "george.bluth@reqres.in",
      "first_name": "George",
      "last_name": "Bluth",
      "avatar": "https://reqres.in/img/faces/1-image.jpg"
    },
    {
      "id": 2,
      "email": "janet.weaver@reqres.in",
      "first_name": "Janet",
      "last_name": "Weaver",
      "avatar": "https://reqres.in/img/faces/2-image.jpg"
    },
    {
      "id": 3,
      "email": "emma.wong@reqres.in",
      "first_name": "Emma",
      "last_name": "Wong",
      "avatar": "https://reqres.in/img/faces/3-image.jpg"
    },
    {
      "id": 4,
      "email": "eve.holt@reqres.in",
      "first_name": "Eve",
      "last_name": "Holt",
      "avatar": "https://reqres.in/img/faces/4-image.jpg"
    },
    {
      "id": 5,
      "email": "charles.morris@reqres.in",
      "first_name": "Charles",
      "last_name": "Morris",
      "avatar": "https://reqres.in/img/faces/5-image.jpg"
    },
    {
      "id": 6,
      "email": "tracey.ramos@reqres.in",
      "first_name": "Tracey",
      "last_name": "Ramos",
      "avatar": "https://reqres.in/img/faces/6-image.jpg"
    }
  ],
  "support": {
    "url": "https://reqres.in/#support-heading",
    "text":
        "To keep ReqRes free, contributions towards server costs are appreciated!"
  }
};
