// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GroupCWProxy {
  Group index(int index);

  Group groups(List<GroupTodo> groups);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Group(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Group(...).copyWith(id: 12, name: "My name")
  /// ````
  Group call({
    int? index,
    List<GroupTodo>? groups,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGroup.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGroup.copyWith.fieldName(...)`
class _$GroupCWProxyImpl implements _$GroupCWProxy {
  const _$GroupCWProxyImpl(this._value);

  final Group _value;

  @override
  Group index(int index) => this(index: index);

  @override
  Group groups(List<GroupTodo> groups) => this(groups: groups);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Group(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Group(...).copyWith(id: 12, name: "My name")
  /// ````
  Group call({
    Object? index = const $CopyWithPlaceholder(),
    Object? groups = const $CopyWithPlaceholder(),
  }) {
    return Group(
      index: index == const $CopyWithPlaceholder() || index == null
          ? _value.index
          // ignore: cast_nullable_to_non_nullable
          : index as int,
      groups: groups == const $CopyWithPlaceholder() || groups == null
          ? _value.groups
          // ignore: cast_nullable_to_non_nullable
          : groups as List<GroupTodo>,
    );
  }
}

extension $GroupCopyWith on Group {
  /// Returns a callable class that can be used as follows: `instanceOfGroup.copyWith(...)` or like so:`instanceOfGroup.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GroupCWProxy get copyWith => _$GroupCWProxyImpl(this);
}
