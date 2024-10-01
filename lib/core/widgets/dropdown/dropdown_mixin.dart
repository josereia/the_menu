mixin DropdownMixin {
  String? getItem<T>(T? item, String Function(T item)? itemToString) {
    if (item != null && itemToString != null) {
      return itemToString(item as T);
    }

    return item?.toString();
  }
}
