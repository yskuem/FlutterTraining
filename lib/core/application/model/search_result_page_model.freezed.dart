// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchResultPageModel {
  Result<List<Repository>> get fetchRepositoryResult =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchResultPageModelCopyWith<SearchResultPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultPageModelCopyWith<$Res> {
  factory $SearchResultPageModelCopyWith(SearchResultPageModel value,
          $Res Function(SearchResultPageModel) then) =
      _$SearchResultPageModelCopyWithImpl<$Res, SearchResultPageModel>;
  @useResult
  $Res call({Result<List<Repository>> fetchRepositoryResult});

  $ResultCopyWith<List<Repository>, $Res> get fetchRepositoryResult;
}

/// @nodoc
class _$SearchResultPageModelCopyWithImpl<$Res,
        $Val extends SearchResultPageModel>
    implements $SearchResultPageModelCopyWith<$Res> {
  _$SearchResultPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchRepositoryResult = null,
  }) {
    return _then(_value.copyWith(
      fetchRepositoryResult: null == fetchRepositoryResult
          ? _value.fetchRepositoryResult
          : fetchRepositoryResult // ignore: cast_nullable_to_non_nullable
              as Result<List<Repository>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<List<Repository>, $Res> get fetchRepositoryResult {
    return $ResultCopyWith<List<Repository>, $Res>(_value.fetchRepositoryResult,
        (value) {
      return _then(_value.copyWith(fetchRepositoryResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchResultPageModelImplCopyWith<$Res>
    implements $SearchResultPageModelCopyWith<$Res> {
  factory _$$SearchResultPageModelImplCopyWith(
          _$SearchResultPageModelImpl value,
          $Res Function(_$SearchResultPageModelImpl) then) =
      __$$SearchResultPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Result<List<Repository>> fetchRepositoryResult});

  @override
  $ResultCopyWith<List<Repository>, $Res> get fetchRepositoryResult;
}

/// @nodoc
class __$$SearchResultPageModelImplCopyWithImpl<$Res>
    extends _$SearchResultPageModelCopyWithImpl<$Res,
        _$SearchResultPageModelImpl>
    implements _$$SearchResultPageModelImplCopyWith<$Res> {
  __$$SearchResultPageModelImplCopyWithImpl(_$SearchResultPageModelImpl _value,
      $Res Function(_$SearchResultPageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchRepositoryResult = null,
  }) {
    return _then(_$SearchResultPageModelImpl(
      fetchRepositoryResult: null == fetchRepositoryResult
          ? _value.fetchRepositoryResult
          : fetchRepositoryResult // ignore: cast_nullable_to_non_nullable
              as Result<List<Repository>>,
    ));
  }
}

/// @nodoc

class _$SearchResultPageModelImpl implements _SearchResultPageModel {
  const _$SearchResultPageModelImpl({required this.fetchRepositoryResult});

  @override
  final Result<List<Repository>> fetchRepositoryResult;

  @override
  String toString() {
    return 'SearchResultPageModel(fetchRepositoryResult: $fetchRepositoryResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultPageModelImpl &&
            (identical(other.fetchRepositoryResult, fetchRepositoryResult) ||
                other.fetchRepositoryResult == fetchRepositoryResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchRepositoryResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultPageModelImplCopyWith<_$SearchResultPageModelImpl>
      get copyWith => __$$SearchResultPageModelImplCopyWithImpl<
          _$SearchResultPageModelImpl>(this, _$identity);
}

abstract class _SearchResultPageModel implements SearchResultPageModel {
  const factory _SearchResultPageModel(
          {required final Result<List<Repository>> fetchRepositoryResult}) =
      _$SearchResultPageModelImpl;

  @override
  Result<List<Repository>> get fetchRepositoryResult;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultPageModelImplCopyWith<_$SearchResultPageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
