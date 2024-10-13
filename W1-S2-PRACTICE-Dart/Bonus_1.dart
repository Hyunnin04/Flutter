enum Direction { North, East, South, West}
class Robot {
  int x;
  int y;
  Direction direction;

  Robot(this.x, this.y, this.direction);
  
  void turnRight() {
    direction = Direction.values[(direction.index + 1) % 4];
  }
  void turnLeft() {
    direction = Direction.values[(direction.index - 1 + 4) % 4];
  }
  void advance() {
    switch (direction) {
      case Direction.North:
        y += 1;
        break;
      case Direction.East:
        x += 1;
        break;
      case Direction.South:
        y -= 1;
        break;
      case Direction.West:
        x -= 1;
        break;
    }
  }

  void Instructions(String instructions) {
    for (var command in instructions.split('')) {
      switch (command) {
        case 'R':
          turnRight();
          break;
        case 'L':
          turnLeft();
          break;
        case 'A':
          advance();
          break;
      }
    }
  }
  void Position() {
    print('Current Position: {$x, $y}, Facing: $direction');
  }
}
void main() {
  Robot robot = Robot(7, 3, Direction.North);
  String instructions = "RAALAL";
  robot.Instructions(instructions);
  robot.Position(); 
}
