import 'package:flutter/material.dart';
import 'package:flutter_training/core/application/model/search_page_model.dart';
import 'package:flutter_training/core/application/view_model/search_page_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchPageProvider =
    StateNotifierProvider<SearchPageViewModel, SearchPageModel>((ref) {
      return SearchPageViewModel(
          SearchPageModel(
              formTextController: TextEditingController()
          )
      );
    });



class SearchPage extends HookConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final state = ref.watch(searchPageProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Search Repository"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: state.formTextController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
            ),
          )
        ));
  }
}
