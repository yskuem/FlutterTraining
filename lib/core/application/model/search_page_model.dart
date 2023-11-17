import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../entities/repository.dart';
import '../../entities/result.dart';
part 'search_page_model.freezed.dart';

@freezed
class SearchPageModel with _$SearchPageModel {
  const factory SearchPageModel({
    required TextEditingController formTextController,
    required Result<List<Repository>> fetchRepositoryResult
  }) = _SearchPageModel;
}
