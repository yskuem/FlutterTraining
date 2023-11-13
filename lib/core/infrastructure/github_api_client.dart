import 'package:dio/dio.dart';
import 'package:flutter_training/core/entities/repository.dart';

class GithubApiClient{

  final Dio _dio = Dio();

  Future<List<Repository>> fetchRepository () async {
    final response = await _dio.get('https://api.github.com/search/repositories?q=flutter');
    final List<dynamic> items = response.data["items"];
    final List<Repository> itemList = items.map((data) => Repository.fromJson(data)).toList();
    return itemList;
  }

}