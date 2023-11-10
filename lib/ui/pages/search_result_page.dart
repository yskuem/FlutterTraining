import 'package:flutter/material.dart';

class RepositorySearchPage extends StatelessWidget {
  const RepositorySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("repositories"),
        ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return const Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                elevation: 4.0,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ListTile(
                    title: Text(
                      "flutter",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "Flutter makes it easy and fast to build beautiful apps for mobile and beyond"
                    ),
                    trailing: Text("1000 Stars"),
                  ),
                ),
              ),
            );
          },
        )
    );
  }
}
