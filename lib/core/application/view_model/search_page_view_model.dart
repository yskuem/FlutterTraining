import 'package:flutter_training/core/application/model/search_page_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../entities/repository.dart';
import '../../entities/result.dart';
import '../../infrastructure/github_api_client.dart';

class SearchPageViewModel extends StateNotifier<SearchPageModel>{
  SearchPageViewModel(super.state);


  void initializeResult() {
    state = state.copyWith(
      fetchRepositoryResult: const Result.loading(),
    );
  }



  Future<void> fetchRepository (String query) async {
    try{
      final List<Repository> data = await GithubApiClient().fetchRepository(query);
      state = state.copyWith(
          fetchRepositoryResult: Success(data)
      );
    } catch(error) {
      state = state.copyWith(
          fetchRepositoryResult: ResultError(error)
      );
    }
  }
}