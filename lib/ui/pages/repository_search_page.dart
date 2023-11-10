

import 'package:flutter/material.dart';


class RepositorySearchPage extends StatelessWidget {
  const RepositorySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              title: Text("flutter"),
              subtitle: Text("Flutter makes it easy and fast to build beautiful apps for mobile and beyond"),
              trailing: Text("1000 Stars")
            ),
          )
        ],
      ),
    );
  }
}
