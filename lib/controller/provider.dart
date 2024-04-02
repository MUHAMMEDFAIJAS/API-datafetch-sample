import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Apiprovider extends ChangeNotifier {
  List<dynamic> users = [];
  Apiprovider() {
    fetchusers();
  }

  void fetchusers() async {
    print('fetch users called');
    const url = 'https://randomuser.me/api/?results=20&gender=male';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);

    users = json['results'];

    print('fetchusers completed');
    notifyListeners();
  }
}
