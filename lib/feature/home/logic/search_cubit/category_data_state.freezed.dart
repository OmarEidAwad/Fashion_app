// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryDataState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDataState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryDataState()';
}


}

/// @nodoc
class $CategoryDataStateCopyWith<$Res>  {
$CategoryDataStateCopyWith(CategoryDataState _, $Res Function(CategoryDataState) __);
}


/// Adds pattern-matching-related methods to [CategoryDataState].
extension CategoryDataStatePatterns on CategoryDataState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CategoryDataInitial value)?  initial,TResult Function( CategoryDataLoading value)?  loading,TResult Function( CategoryDataSuccess value)?  success,TResult Function( CategoryDataError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CategoryDataInitial() when initial != null:
return initial(_that);case CategoryDataLoading() when loading != null:
return loading(_that);case CategoryDataSuccess() when success != null:
return success(_that);case CategoryDataError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CategoryDataInitial value)  initial,required TResult Function( CategoryDataLoading value)  loading,required TResult Function( CategoryDataSuccess value)  success,required TResult Function( CategoryDataError value)  error,}){
final _that = this;
switch (_that) {
case CategoryDataInitial():
return initial(_that);case CategoryDataLoading():
return loading(_that);case CategoryDataSuccess():
return success(_that);case CategoryDataError():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CategoryDataInitial value)?  initial,TResult? Function( CategoryDataLoading value)?  loading,TResult? Function( CategoryDataSuccess value)?  success,TResult? Function( CategoryDataError value)?  error,}){
final _that = this;
switch (_that) {
case CategoryDataInitial() when initial != null:
return initial(_that);case CategoryDataLoading() when loading != null:
return loading(_that);case CategoryDataSuccess() when success != null:
return success(_that);case CategoryDataError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( CategoryData data)?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CategoryDataInitial() when initial != null:
return initial();case CategoryDataLoading() when loading != null:
return loading();case CategoryDataSuccess() when success != null:
return success(_that.data);case CategoryDataError() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( CategoryData data)  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case CategoryDataInitial():
return initial();case CategoryDataLoading():
return loading();case CategoryDataSuccess():
return success(_that.data);case CategoryDataError():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( CategoryData data)?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case CategoryDataInitial() when initial != null:
return initial();case CategoryDataLoading() when loading != null:
return loading();case CategoryDataSuccess() when success != null:
return success(_that.data);case CategoryDataError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class CategoryDataInitial implements CategoryDataState {
  const CategoryDataInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDataInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryDataState.initial()';
}


}




/// @nodoc


class CategoryDataLoading implements CategoryDataState {
  const CategoryDataLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDataLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryDataState.loading()';
}


}




/// @nodoc


class CategoryDataSuccess implements CategoryDataState {
  const CategoryDataSuccess(this.data);
  

 final  CategoryData data;

/// Create a copy of CategoryDataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDataSuccessCopyWith<CategoryDataSuccess> get copyWith => _$CategoryDataSuccessCopyWithImpl<CategoryDataSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDataSuccess&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'CategoryDataState.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $CategoryDataSuccessCopyWith<$Res> implements $CategoryDataStateCopyWith<$Res> {
  factory $CategoryDataSuccessCopyWith(CategoryDataSuccess value, $Res Function(CategoryDataSuccess) _then) = _$CategoryDataSuccessCopyWithImpl;
@useResult
$Res call({
 CategoryData data
});


$CategoryDataCopyWith<$Res> get data;

}
/// @nodoc
class _$CategoryDataSuccessCopyWithImpl<$Res>
    implements $CategoryDataSuccessCopyWith<$Res> {
  _$CategoryDataSuccessCopyWithImpl(this._self, this._then);

  final CategoryDataSuccess _self;
  final $Res Function(CategoryDataSuccess) _then;

/// Create a copy of CategoryDataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(CategoryDataSuccess(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CategoryData,
  ));
}

/// Create a copy of CategoryDataState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryDataCopyWith<$Res> get data {
  
  return $CategoryDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class CategoryDataError implements CategoryDataState {
  const CategoryDataError(this.message);
  

 final  String message;

/// Create a copy of CategoryDataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDataErrorCopyWith<CategoryDataError> get copyWith => _$CategoryDataErrorCopyWithImpl<CategoryDataError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDataError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CategoryDataState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $CategoryDataErrorCopyWith<$Res> implements $CategoryDataStateCopyWith<$Res> {
  factory $CategoryDataErrorCopyWith(CategoryDataError value, $Res Function(CategoryDataError) _then) = _$CategoryDataErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CategoryDataErrorCopyWithImpl<$Res>
    implements $CategoryDataErrorCopyWith<$Res> {
  _$CategoryDataErrorCopyWithImpl(this._self, this._then);

  final CategoryDataError _self;
  final $Res Function(CategoryDataError) _then;

/// Create a copy of CategoryDataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CategoryDataError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
