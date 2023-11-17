import 'package:flutter/material.dart';
import 'package:flutter_training/core/application/model/search_page_model.dart';
import 'package:flutter_training/core/application/view_model/search_page_view_model.dart';
import 'package:flutter_training/ui/pages/search_result_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../core/entities/result.dart';

final searchPageProvider =
    StateNotifierProvider.autoDispose<SearchPageViewModel, SearchPageModel>((ref) {
      return SearchPageViewModel(
          SearchPageModel(
              formTextController: TextEditingController(),
              fetchRepositoryResult: const Result.loading(),
          )
      );
    });



class SearchPage extends HookConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final state = ref.watch(searchPageProvider);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Search Repository"),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: state.formTextController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                    ),
                  ),
                  IconButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SearchResultPage()),
                        );
                      },
                      icon: const Icon(Icons.search)
                  )
                ],
              ),
            )
          )),
    );
  }
}
