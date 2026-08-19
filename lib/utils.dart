// FNV-1a 64bit hash algorithm optimized for Dart Strings
// Useful for databases like isar which require id to be an integer
import 'dart:async';

const tosUrl = 'https://yourdomain/tos';
const privacyUrl = 'https://yourdomain/privacy';

int fastHash(String string) {
  var hash = 0xcbf29ce484222325;

  var i = 0;
  while (i < string.length) {
    final codeUnit = string.codeUnitAt(i++);
    hash ^= codeUnit >> 8;
    hash *= 0x100000001b3;
    hash ^= codeUnit & 0xFF;
    hash *= 0x100000001b3;
  }

  return hash;
}

class Nothing {
  const Nothing();
}

/// This debouncer can manage multiple debounces at the same time
/// by providing a key to each debounce call
mixin DebounceMixin {
  final Map<String, Timer?> _timers = {};

  /// Will cancel the previous debounce timer if it exists with the given key
  void debounce({
    required String key,
    required Duration delay,
    required void Function() action,
  }) {
    if (_timers.containsKey(key)) _timers[key]!.cancel();
    _timers[key] = Timer(delay, () => action.call());
  }

  /// Will cancel the debounce timer with the given key
  void cancelDebounceByKey(String key) {
    _timers[key]?.cancel();
    _timers.remove(key);
  }
}
