import 'package:flutter/material.dart';
import 'package:flutter_training/core/entities/repository.dart';
import 'package:flutter_training/core/services/api_services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../parts/repository_cardlist.dart';


final repositoryProvider = FutureProvider<List<Repository>>((ref) async {
  return await ApiService().fetchRepository();
});



class RepositorySearchPage extends HookConsumerWidget {
  const RepositorySearchPage({super.key});

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
