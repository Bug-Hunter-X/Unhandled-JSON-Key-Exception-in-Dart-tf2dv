```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Accessing a non-existent key in jsonData will throw an exception
      final value = jsonData['nonExistentKey'];
      print(value);
    } else {
      // Handle HTTP errors
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the process
    print('Error: $e');
  }
}
```