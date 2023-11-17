// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchPageModel {
  TextEditingController get formTextController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPageModelCopyWith<SearchPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPageModelCopyWith<$Res> {
  factory $SearchPageModelCopyWith(
          SearchPageModel value, $Res Function(SearchPageModel) then) =
      _$SearchPageModelCopyWithImpl<$Res, SearchPageModel>;
  @useResult
  $Res call({TextEditingController formTextController});
}

/// @nodoc
class _$SearchPageModelCopyWithImpl<$Res, $Val extends SearchPageModel>
    implements $SearchPageModelCopyWith<$Res> {
  _$SearchPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formTextController = null,
  }) {
    return _then(_value.copyWith(
      formTextController: null == formTextController
          ? _value.formTextController
          : formTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchPageModelImplCopyWith<$Res>
    implements $SearchPageModelCopyWith<$Res> {
  factory _$$SearchPageModelImplCopyWith(_$SearchPageModelImpl value,
          $Res Function(_$SearchPageModelImpl) then) =
      __$$SearchPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextEditingController formTextController});
}

/// @nodoc
class __$$SearchPageModelImplCopyWithImpl<$Res>
    extends _$SearchPageModelCopyWithImpl<$Res, _$SearchPageModelImpl>
    implements _$$SearchPageModelImplCopyWith<$Res> {
  __$$SearchPageModelImplCopyWithImpl(
      _$SearchPageModelImpl _value, $Res Function(_$SearchPageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formTextController = null,
  }) {
    return _then(_$SearchPageModelImpl(
      formTextController: null == formTextController
          ? _value.formTextController
          : formTextController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$SearchPageModelImpl implements _SearchPageModel {
  const _$SearchPageModelImpl({required this.formTextController});

  @override
  final TextEditingController formTextController;

  @override
  String toString() {
    return 'SearchPageModel(formTextController: $formTextController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPageModelImpl &&
            (identical(other.formTextController, formTextController) ||
                other.formTextController == formTextController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formTextController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPageModelImplCopyWith<_$SearchPageModelImpl> get copyWith =>
      __$$SearchPageModelImplCopyWithImpl<_$SearchPageModelImpl>(
          this, _$identity);
}

abstract class _SearchPageModel implements SearchPageModel {
  const factory _SearchPageModel(
          {required final TextEditingController formTextController}) =
      _$SearchPageModelImpl;

  @override
  TextEditingController get formTextController;
  @override
  @JsonKey(ignore: true)
  _$$SearchPageModelImplCopyWith<_$SearchPageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
