import 'dart:io';

void main() {
    stdout.writeln('Greet somebody');
    String input = stdin.readLineSync();
    List<String> greetings = [
      'World',
      'Mars',
      'Oregon',
      'Beatles',
      'Deep Purple',
    ];
    for (var name in greetings) {
        helloDart(name);
    }
    return helloDart(input);
}

void helloDart(String name) {
    print('Hello, $name');
}
