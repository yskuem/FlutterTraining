import 'package:flutter/material.dart';
import 'package:flutter_training/ui/pages/search_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShowAlert extends ConsumerWidget {
  final String errorMessage;

  const ShowAlert({super.key,required this.errorMessage});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: AlertDialog(
          title: const Text('エラーが発生しました'),
          content: Text(errorMessage),
          actions: <Widget>[
            TextButton(
              child: const Text('閉じる'),
              onPressed: () {
                Navigator.of(context).pop();
                ref.read(searchPageProvider.notifier).initializeResult();//初期化
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.orange,
                    content: Text(errorMessage),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

