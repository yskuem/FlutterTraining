import 'package:flutter/material.dart';
import '../../core/entities/repository.dart';


class RepositoryCardList extends StatelessWidget {

  final List<Repository> repositoryList;
  const RepositoryCardList({super.key,required this.repositoryList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: repositoryList.length,
      itemBuilder: (BuildContext context, int index) {
        final repository = repositoryList[index];
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                title: Text(
                  repository.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                    repository.description
                ),
                trailing: Text("${repository.starCount} Stars"),
              ),
            ),
          ),
        );
      },
    );
  }
}
