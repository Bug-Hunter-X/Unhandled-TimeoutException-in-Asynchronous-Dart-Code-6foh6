```dart
import 'dart:async';

Future<void> main() async {
  try {
    await Future.delayed(Duration(seconds: 2), () {
      // Simulate a potential operation that can take more than 1 second.
      // If you do not throw an exception here then no TimeoutException is caught
       throw TimeoutException('Simulated timeout'); 
    });
    print('Future completed successfully!');
  } on TimeoutException catch (e) {
    print('Timeout error: ${e.message}'); // Access message property 
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```