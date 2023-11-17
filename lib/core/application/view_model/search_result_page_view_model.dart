import 'package:flutter_training/core/application/model/search_result_page_model.dart';
import 'package:flutter_training/core/entities/repository.dart';
import 'package:flutter_training/core/entities/result.dart';
import 'package:flutter_training/core/infrastructure/github_api_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchResultPageViewModel extends StateNotifier<SearchResultPageModel>{
  SearchResultPageViewModel(super.state);

  Future<void> fetchRepository (String query) async {
    try{
      final List<Repository> data = await GithubApiClient().fetchRepository(query);
      state = state.copyWith(
        fetchRepositoryResult: Success(data)
      );
    } catch(error) {
      state = state.copyWith(
          fetchRepositoryResult: ResultError(Error())
      );
    }
  }
}