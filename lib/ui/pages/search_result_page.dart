import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_training/ui/pages/search_page.dart';
import 'package:flutter_training/ui/parts/repository_cardlist.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';




class SearchResultPage extends HookConsumerWidget {
  const SearchResultPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final state = ref.watch(searchPageProvider);


    useEffect(() {//Repository fetch
      final query = ref.read(searchPageProvider).formTextController.text;
      ref.read(searchPageProvider.notifier).fetchRepository(query);
      return;
    }, const []);


    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Result"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            ref.read(searchPageProvider.notifier).initializeResult();
            Navigator.of(context).pop();
          },
        ),
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
