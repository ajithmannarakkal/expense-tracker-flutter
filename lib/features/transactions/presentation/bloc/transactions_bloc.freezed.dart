// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransactionEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'TransactionEvent()';
}


}

/// @nodoc
class $TransactionEventCopyWith<$Res>  {
$TransactionEventCopyWith(TransactionEvent _, $Res Function(TransactionEvent) __);
}


/// Adds pattern-matching-related methods to [TransactionEvent].
extension TransactionEventPatterns on TransactionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetTransactions value)?  getTransactions,TResult Function( _AddTransaction value)?  addTransaction,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetTransactions() when getTransactions != null:
return getTransactions(_that);case _AddTransaction() when addTransaction != null:
return addTransaction(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetTransactions value)  getTransactions,required TResult Function( _AddTransaction value)  addTransaction,}){
final _that = this;
switch (_that) {
case _GetTransactions():
return getTransactions(_that);case _AddTransaction():
return addTransaction(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetTransactions value)?  getTransactions,TResult? Function( _AddTransaction value)?  addTransaction,}){
final _that = this;
switch (_that) {
case _GetTransactions() when getTransactions != null:
return getTransactions(_that);case _AddTransaction() when addTransaction != null:
return addTransaction(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getTransactions,TResult Function( AddTransactionRequest request)?  addTransaction,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetTransactions() when getTransactions != null:
return getTransactions();case _AddTransaction() when addTransaction != null:
return addTransaction(_that.request);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getTransactions,required TResult Function( AddTransactionRequest request)  addTransaction,}) {final _that = this;
switch (_that) {
case _GetTransactions():
return getTransactions();case _AddTransaction():
return addTransaction(_that.request);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getTransactions,TResult? Function( AddTransactionRequest request)?  addTransaction,}) {final _that = this;
switch (_that) {
case _GetTransactions() when getTransactions != null:
return getTransactions();case _AddTransaction() when addTransaction != null:
return addTransaction(_that.request);case _:
  return null;

}
}

}

/// @nodoc


class _GetTransactions implements TransactionEvent {
  const _GetTransactions();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTransactions);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'TransactionEvent.getTransactions()';
}


}




/// @nodoc


class _AddTransaction implements TransactionEvent {
  const _AddTransaction(this.request);
  

 final  AddTransactionRequest request;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTransactionCopyWith<_AddTransaction> get copyWith => __$AddTransactionCopyWithImpl<_AddTransaction>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTransaction&&(identical(other.request, request) || other.request == request));
}


@override
int get hashCode {
    return Object.hash(runtimeType,request);
}

@override
String toString() {
    return 'TransactionEvent.addTransaction(request: $request)';
}


}

/// @nodoc
abstract mixin class _$AddTransactionCopyWith<$Res> implements $TransactionEventCopyWith<$Res> {
  factory _$AddTransactionCopyWith(_AddTransaction value, $Res Function(_AddTransaction) _then) = __$AddTransactionCopyWithImpl;
@useResult
$Res call({
 AddTransactionRequest request
});




}
/// @nodoc
class __$AddTransactionCopyWithImpl<$Res>
    implements _$AddTransactionCopyWith<$Res> {
  __$AddTransactionCopyWithImpl(this._self, this._then);

  final _AddTransaction _self;
  final $Res Function(_AddTransaction) _then;

/// Create a copy of TransactionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? request = null,}) {
  return _then(_AddTransaction(
null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as AddTransactionRequest,
  ));
}


}

/// @nodoc
mixin _$TransactionState {

 TransactionStatus get status; List<TransactionDetails> get transactions; GetTransactionsResponse? get transactionsResponse; AddTransactionResponse? get addTransactionResponse; String? get successMessage; String? get errorMessage; String? get validationMessage;
/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionStateCopyWith<TransactionState> get copyWith => _$TransactionStateCopyWithImpl<TransactionState>(this as TransactionState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as TransactionState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionState&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.transactions, _this.transactions)&&(identical(other.transactionsResponse, _this.transactionsResponse) || other.transactionsResponse == _this.transactionsResponse)&&(identical(other.addTransactionResponse, _this.addTransactionResponse) || other.addTransactionResponse == _this.addTransactionResponse)&&(identical(other.successMessage, _this.successMessage) || other.successMessage == _this.successMessage)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.validationMessage, _this.validationMessage) || other.validationMessage == _this.validationMessage));
}


@override
int get hashCode {
  final _this = this as TransactionState;
  return Object.hash(runtimeType,_this.status,const DeepCollectionEquality().hash(_this.transactions),_this.transactionsResponse,_this.addTransactionResponse,_this.successMessage,_this.errorMessage,_this.validationMessage);
}

@override
String toString() {
  final _this = this as TransactionState;
  return 'TransactionState(status: ${_this.status}, transactions: ${_this.transactions}, transactionsResponse: ${_this.transactionsResponse}, addTransactionResponse: ${_this.addTransactionResponse}, successMessage: ${_this.successMessage}, errorMessage: ${_this.errorMessage}, validationMessage: ${_this.validationMessage})';
}


}

/// @nodoc
abstract mixin class $TransactionStateCopyWith<$Res>  {
  factory $TransactionStateCopyWith(TransactionState value, $Res Function(TransactionState) _then) = _$TransactionStateCopyWithImpl;
@useResult
$Res call({
 TransactionStatus status, List<TransactionDetails> transactions, GetTransactionsResponse? transactionsResponse, AddTransactionResponse? addTransactionResponse, String? successMessage, String? errorMessage, String? validationMessage
});




}
/// @nodoc
class _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._self, this._then);

  final TransactionState _self;
  final $Res Function(TransactionState) _then;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? transactions = null,Object? transactionsResponse = freezed,Object? addTransactionResponse = freezed,Object? successMessage = freezed,Object? errorMessage = freezed,Object? validationMessage = freezed,}) {
  return _then(TransactionState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TransactionStatus,transactions: null == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<TransactionDetails>,transactionsResponse: freezed == transactionsResponse ? _self.transactionsResponse : transactionsResponse // ignore: cast_nullable_to_non_nullable
as GetTransactionsResponse?,addTransactionResponse: freezed == addTransactionResponse ? _self.addTransactionResponse : addTransactionResponse // ignore: cast_nullable_to_non_nullable
as AddTransactionResponse?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,validationMessage: freezed == validationMessage ? _self.validationMessage : validationMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionState].
extension TransactionStatePatterns on TransactionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionState value)  $default,){
final _that = this;
switch (_that) {
case _TransactionState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionState value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TransactionStatus status,  List<TransactionDetails> transactions,  GetTransactionsResponse? transactionsResponse,  AddTransactionResponse? addTransactionResponse,  String? successMessage,  String? errorMessage,  String? validationMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionState() when $default != null:
return $default(_that.status,_that.transactions,_that.transactionsResponse,_that.addTransactionResponse,_that.successMessage,_that.errorMessage,_that.validationMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TransactionStatus status,  List<TransactionDetails> transactions,  GetTransactionsResponse? transactionsResponse,  AddTransactionResponse? addTransactionResponse,  String? successMessage,  String? errorMessage,  String? validationMessage)  $default,) {final _that = this;
switch (_that) {
case _TransactionState():
return $default(_that.status,_that.transactions,_that.transactionsResponse,_that.addTransactionResponse,_that.successMessage,_that.errorMessage,_that.validationMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TransactionStatus status,  List<TransactionDetails> transactions,  GetTransactionsResponse? transactionsResponse,  AddTransactionResponse? addTransactionResponse,  String? successMessage,  String? errorMessage,  String? validationMessage)?  $default,) {final _that = this;
switch (_that) {
case _TransactionState() when $default != null:
return $default(_that.status,_that.transactions,_that.transactionsResponse,_that.addTransactionResponse,_that.successMessage,_that.errorMessage,_that.validationMessage);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionState implements TransactionState {
  const _TransactionState({this.status = TransactionStatus.initial,  List<TransactionDetails> transactions = const <TransactionDetails>[], this.transactionsResponse, this.addTransactionResponse, this.successMessage, this.errorMessage, this.validationMessage}): _transactions = transactions;
  

@override@JsonKey() final  TransactionStatus status;
 final  List<TransactionDetails> _transactions;
@override@JsonKey() List<TransactionDetails> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}

@override final  GetTransactionsResponse? transactionsResponse;
@override final  AddTransactionResponse? addTransactionResponse;
@override final  String? successMessage;
@override final  String? errorMessage;
@override final  String? validationMessage;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionStateCopyWith<_TransactionState> get copyWith => __$TransactionStateCopyWithImpl<_TransactionState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.transactions, _transactions)&&(identical(other.transactionsResponse, transactionsResponse) || other.transactionsResponse == transactionsResponse)&&(identical(other.addTransactionResponse, addTransactionResponse) || other.addTransactionResponse == addTransactionResponse)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.validationMessage, validationMessage) || other.validationMessage == validationMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_transactions),transactionsResponse,addTransactionResponse,successMessage,errorMessage,validationMessage);
}

@override
String toString() {
    return 'TransactionState(status: $status, transactions: $transactions, transactionsResponse: $transactionsResponse, addTransactionResponse: $addTransactionResponse, successMessage: $successMessage, errorMessage: $errorMessage, validationMessage: $validationMessage)';
}


}

/// @nodoc
abstract mixin class _$TransactionStateCopyWith<$Res> implements $TransactionStateCopyWith<$Res> {
  factory _$TransactionStateCopyWith(_TransactionState value, $Res Function(_TransactionState) _then) = __$TransactionStateCopyWithImpl;
@override @useResult
$Res call({
 TransactionStatus status, List<TransactionDetails> transactions, GetTransactionsResponse? transactionsResponse, AddTransactionResponse? addTransactionResponse, String? successMessage, String? errorMessage, String? validationMessage
});




}
/// @nodoc
class __$TransactionStateCopyWithImpl<$Res>
    implements _$TransactionStateCopyWith<$Res> {
  __$TransactionStateCopyWithImpl(this._self, this._then);

  final _TransactionState _self;
  final $Res Function(_TransactionState) _then;

/// Create a copy of TransactionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? transactions = null,Object? transactionsResponse = freezed,Object? addTransactionResponse = freezed,Object? successMessage = freezed,Object? errorMessage = freezed,Object? validationMessage = freezed,}) {
  return _then(_TransactionState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TransactionStatus,transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<TransactionDetails>,transactionsResponse: freezed == transactionsResponse ? _self.transactionsResponse : transactionsResponse // ignore: cast_nullable_to_non_nullable
as GetTransactionsResponse?,addTransactionResponse: freezed == addTransactionResponse ? _self.addTransactionResponse : addTransactionResponse // ignore: cast_nullable_to_non_nullable
as AddTransactionResponse?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,validationMessage: freezed == validationMessage ? _self.validationMessage : validationMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
