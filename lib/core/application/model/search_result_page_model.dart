import 'package:flutter_training/core/entities/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../entities/result.dart';
part 'search_result_page_model.freezed.dart';

@freezed
class SearchResultPageModel with _$SearchResultPageModel {
  const factory SearchResultPageModel({
    required Result<List<Repository>> fetchRepositoryResult
  }) = _SearchResultPageModel;
}
