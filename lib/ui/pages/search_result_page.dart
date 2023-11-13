import 'package:flutter/material.dart';
import 'package:flutter_training/core/entities/repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../core/infrastructure/github_api_client.dart';
import '../parts/repository_cardlist.dart';


final repositoryProvider = FutureProvider<List<Repository>>((ref) async {
  return await GithubApiClient().fetchRepository();
});



class SearchResultPage extends HookConsumerWidget {
  const SearchResultPage({super.key});


  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final repositoryListData = ref.watch(repositoryProvider);

    return Scaffold(
      body: repositoryListData.when(
        data: (repositoryList){
          return RepositoryCardList(
            repositoryList: repositoryList,
          );
        },
        error: (error, stack) => Text('Error: $error'),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
