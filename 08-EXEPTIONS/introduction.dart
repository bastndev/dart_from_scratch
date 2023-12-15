/* void main() {
  try {
    final result = int.parse('Hello');
  } catch (e) {
    print(e);
  }
  print("Hello my baby!");
}
 */

/* void main() {
  try {
    final result = parse();
  } catch (e) {
    print(e);
  }
}

int parse(){
  return int.parse('Hello ');
} */

/* void main() {
  try {
    final result = parse();
    print(result);
  } catch (e) {
    print(e);
  }
}

int parse() {
  try {
    return int.parse('Hello ');
  } catch (e) {
    return 0;
  }
}
 */

/* void main() {
  try {
    final result = parse();
    print(result);
  } catch (e) {
    print(e);
  }
}

int parse() {
  try {
    return int.parse('Hello ');
  } catch (_) {
    print("catch of parse method $_");
    return 0;
  }
} */
/* 
void main() {
  try {
    final result = parse();
    print(result);
  } catch (e) {
    print(e);
  }
}

int parse() {
  try {
    return int.parse('Hello ');
  } catch (_) {
    print("catch of parse method $_");
    throw 'String cannot be parsed';
  }
}
 */

/* void main() {
  try {
    final result = parse();
    print(result);
  } catch (e) {
    print(e);
  }
}

int parse() {
  try {
    return int.parse('Hello ');
  } catch (_) {
    throw Exception("could not be parsed");
  }
}
 */

/* void main() {
  try {
    final result = parse();
    print(result);
  } catch (e) {
    print(e);
  }
}

int parse() {
  try {
    return int.parse('Hello ');
  } catch (_) {
    // throw Exception("could not be parsed");
    rethrow;
  }
}
 */

/* void main() {
  try {
    final result = parse('Hello', 1);
    print(result);
  } catch (e) {
    print(e);
  }
}

int parse(String str, int a) {
  try {
    return int.parse(str) ~/ a;
  } catch (_) {
    // throw Exception("could not be parsed");
    rethrow;
  }
} */

void main() {
  try {
    final result = parse('2', 0);
    print(result);
  } catch (e) {
    print(e);
  }
}

int parse(String str, int a) {
  try {
    return int.parse(str) ~/ a;
  } catch (_) {
    // throw Exception("could not be parsed");
    rethrow;
  }
}
