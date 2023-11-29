// ignore_for_file: public_member_api_docs, sort_constructors_first
/*
Learn how to improve your Flutter & Dart code through mastery of S.O.L.I.D principles and the Top GoF Design Patterns.
udemy kursundan, open-closed principle örneği
 */

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;
  Circle({
    required this.radius,
  });
  @override
  double calculateArea() {
    return radius * radius * 3.14;
  }
}

class Square extends Shape {
  double side;
  Square({
    required this.side,
  });
  @override
  double calculateArea() {
    return side * side;
  }
}

// * yeni bir shape eklersek, calculateArea metodunun değişmesine gerek yok
// * çünkü kendisi bir abstract nesne alıyor [Shape]
class AreaCalculator {
  double calculateArea(Shape shape) {
    return shape.calculateArea();
  }
}
