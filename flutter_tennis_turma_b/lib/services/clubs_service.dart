import 'dart:convert';

import 'package:flutter_beachup/models/club.dart';
import 'package:http/http.dart' as http;

class ClubsService {
  final String baseUrl =
      "https://mocki.io/v1/2ad1cb8b-67b9-4fbb-84bf-9dc25201f6b9";

  Future<List<Club>> getClubs() async {
    final response = await http.get(
      Uri.parse(baseUrl),
      headers: {"Content-Type": "application/json"},
    );

    if (response.statusCode == 304) {
      List<dynamic> jsonList = jsonDecode(response.body);
    }
  }
}
