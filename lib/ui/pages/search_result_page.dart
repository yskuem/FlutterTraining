import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_training/core/application/model/search_result_page_model.dart';
import 'package:flutter_training/core/entities/result.dart';
import 'package:flutter_training/ui/pages/search_page.dart';
import 'package:flutter_training/ui/parts/repository_cardlist.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../core/application/view_model/search_result_page_view_model.dart';



final searchResultPageProvider =
  StateNotifierProvider<SearchResultPageViewModel,SearchResultPageModel>((ref){
    return SearchResultPageViewModel(
      const SearchResultPageModel(
          fetchRepositoryResult: Result.loading(),
      )
    );
  });


class SearchResultPage extends HookConsumerWidget {
  const SearchResultPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final state = ref.watch(searchResultPageProvider);


    useEffect(() {//Repository fetch
      final query = ref.read(searchPageProvider).formTextController.text;
      ref.read(searchResultPageProvider.notifier).fetchRepository(query);
      return;
    }, const []);


    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Result"),
      ),
      body:state.fetchRepositoryResult.when(
          success: (data){
            return RepositoryCardList(repositoryList: data);
          },
          error: (error){
            print(error);
          },
          loading: () {
            return const Center(child: CircularProgressIndicator());
          }
      )
    );
  }
}
