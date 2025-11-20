// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {

 String get email; String get password;
/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthEventCopyWith<AuthEvent> get copyWith => _$AuthEventCopyWithImpl<AuthEvent>(this as AuthEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $AuthEventCopyWith<$Res>  {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) _then) = _$AuthEventCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$AuthEventCopyWithImpl<$Res>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._self, this._then);

  final AuthEvent _self;
  final $Res Function(AuthEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AuthSignUpEvent value)?  signUp,TResult Function( AuthSignInEvent value)?  signIn,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AuthSignUpEvent() when signUp != null:
return signUp(_that);case AuthSignInEvent() when signIn != null:
return signIn(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AuthSignUpEvent value)  signUp,required TResult Function( AuthSignInEvent value)  signIn,}){
final _that = this;
switch (_that) {
case AuthSignUpEvent():
return signUp(_that);case AuthSignInEvent():
return signIn(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AuthSignUpEvent value)?  signUp,TResult? Function( AuthSignInEvent value)?  signIn,}){
final _that = this;
switch (_that) {
case AuthSignUpEvent() when signUp != null:
return signUp(_that);case AuthSignInEvent() when signIn != null:
return signIn(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password,  String name)?  signUp,TResult Function( String email,  String password)?  signIn,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AuthSignUpEvent() when signUp != null:
return signUp(_that.email,_that.password,_that.name);case AuthSignInEvent() when signIn != null:
return signIn(_that.email,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password,  String name)  signUp,required TResult Function( String email,  String password)  signIn,}) {final _that = this;
switch (_that) {
case AuthSignUpEvent():
return signUp(_that.email,_that.password,_that.name);case AuthSignInEvent():
return signIn(_that.email,_that.password);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password,  String name)?  signUp,TResult? Function( String email,  String password)?  signIn,}) {final _that = this;
switch (_that) {
case AuthSignUpEvent() when signUp != null:
return signUp(_that.email,_that.password,_that.name);case AuthSignInEvent() when signIn != null:
return signIn(_that.email,_that.password);case _:
  return null;

}
}

}

/// @nodoc


class AuthSignUpEvent implements AuthEvent {
  const AuthSignUpEvent({required this.email, required this.password, required this.name});
  

@override final  String email;
@override final  String password;
 final  String name;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthSignUpEventCopyWith<AuthSignUpEvent> get copyWith => _$AuthSignUpEventCopyWithImpl<AuthSignUpEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSignUpEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,name);

@override
String toString() {
  return 'AuthEvent.signUp(email: $email, password: $password, name: $name)';
}


}

/// @nodoc
abstract mixin class $AuthSignUpEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $AuthSignUpEventCopyWith(AuthSignUpEvent value, $Res Function(AuthSignUpEvent) _then) = _$AuthSignUpEventCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, String name
});




}
/// @nodoc
class _$AuthSignUpEventCopyWithImpl<$Res>
    implements $AuthSignUpEventCopyWith<$Res> {
  _$AuthSignUpEventCopyWithImpl(this._self, this._then);

  final AuthSignUpEvent _self;
  final $Res Function(AuthSignUpEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? name = null,}) {
  return _then(AuthSignUpEvent(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AuthSignInEvent implements AuthEvent {
  const AuthSignInEvent({required this.email, required this.password});
  

@override final  String email;
@override final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthSignInEventCopyWith<AuthSignInEvent> get copyWith => _$AuthSignInEventCopyWithImpl<AuthSignInEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSignInEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.signIn(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $AuthSignInEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $AuthSignInEventCopyWith(AuthSignInEvent value, $Res Function(AuthSignInEvent) _then) = _$AuthSignInEventCopyWithImpl;
@override @useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$AuthSignInEventCopyWithImpl<$Res>
    implements $AuthSignInEventCopyWith<$Res> {
  _$AuthSignInEventCopyWithImpl(this._self, this._then);

  final AuthSignInEvent _self;
  final $Res Function(AuthSignInEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(AuthSignInEvent(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AuthState {

 AsyncValue<UserEntity> get signUpState; AsyncValue<UserEntity> get signInState;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.signUpState, signUpState) || other.signUpState == signUpState)&&(identical(other.signInState, signInState) || other.signInState == signInState));
}


@override
int get hashCode => Object.hash(runtimeType,signUpState,signInState);

@override
String toString() {
  return 'AuthState(signUpState: $signUpState, signInState: $signInState)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<UserEntity> signUpState, AsyncValue<UserEntity> signInState
});


$AsyncValueCopyWith<UserEntity, $Res> get signUpState;$AsyncValueCopyWith<UserEntity, $Res> get signInState;

}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? signUpState = null,Object? signInState = null,}) {
  return _then(_self.copyWith(
signUpState: null == signUpState ? _self.signUpState : signUpState // ignore: cast_nullable_to_non_nullable
as AsyncValue<UserEntity>,signInState: null == signInState ? _self.signInState : signInState // ignore: cast_nullable_to_non_nullable
as AsyncValue<UserEntity>,
  ));
}
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AsyncValueCopyWith<UserEntity, $Res> get signUpState {
  
  return $AsyncValueCopyWith<UserEntity, $Res>(_self.signUpState, (value) {
    return _then(_self.copyWith(signUpState: value));
  });
}/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AsyncValueCopyWith<UserEntity, $Res> get signInState {
  
  return $AsyncValueCopyWith<UserEntity, $Res>(_self.signInState, (value) {
    return _then(_self.copyWith(signInState: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<UserEntity> signUpState,  AsyncValue<UserEntity> signInState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.signUpState,_that.signInState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<UserEntity> signUpState,  AsyncValue<UserEntity> signInState)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.signUpState,_that.signInState);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<UserEntity> signUpState,  AsyncValue<UserEntity> signInState)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.signUpState,_that.signInState);case _:
  return null;

}
}

}

/// @nodoc


class _AuthState implements AuthState {
  const _AuthState({this.signUpState = const AsyncValue.initial(), this.signInState = const AsyncValue.initial()});
  

@override@JsonKey() final  AsyncValue<UserEntity> signUpState;
@override@JsonKey() final  AsyncValue<UserEntity> signInState;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.signUpState, signUpState) || other.signUpState == signUpState)&&(identical(other.signInState, signInState) || other.signInState == signInState));
}


@override
int get hashCode => Object.hash(runtimeType,signUpState,signInState);

@override
String toString() {
  return 'AuthState(signUpState: $signUpState, signInState: $signInState)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<UserEntity> signUpState, AsyncValue<UserEntity> signInState
});


@override $AsyncValueCopyWith<UserEntity, $Res> get signUpState;@override $AsyncValueCopyWith<UserEntity, $Res> get signInState;

}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? signUpState = null,Object? signInState = null,}) {
  return _then(_AuthState(
signUpState: null == signUpState ? _self.signUpState : signUpState // ignore: cast_nullable_to_non_nullable
as AsyncValue<UserEntity>,signInState: null == signInState ? _self.signInState : signInState // ignore: cast_nullable_to_non_nullable
as AsyncValue<UserEntity>,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AsyncValueCopyWith<UserEntity, $Res> get signUpState {
  
  return $AsyncValueCopyWith<UserEntity, $Res>(_self.signUpState, (value) {
    return _then(_self.copyWith(signUpState: value));
  });
}/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AsyncValueCopyWith<UserEntity, $Res> get signInState {
  
  return $AsyncValueCopyWith<UserEntity, $Res>(_self.signInState, (value) {
    return _then(_self.copyWith(signInState: value));
  });
}
}

// dart format on
