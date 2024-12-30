```dart
import 'dart:async';

Future<void> main() async {
  try {
    await Future.delayed(Duration(seconds: 1));
    print('Future completed successfully!');
  } on TimeoutException catch (e) {
    print('Timeout error: $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```