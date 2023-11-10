import 'package:freezed_annotation/freezed_annotation.dart';
part 'repository.freezed.dart';
part 'repository.g.dart';


@freezed
class Repository with _$Repository {
  const factory Repository({
    required String name,
    @Default("") String description,
    @JsonKey(name: 'stargazers_count') required int starCount,
  }) = _Repository;
  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
}
