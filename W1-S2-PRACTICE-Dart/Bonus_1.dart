enum Direction { NORTH, EAST, SOUTH, WEST }
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
      case Direction.NORTH:
        y += 1;
        break;
      case Direction.EAST:
        x += 1;
        break;
      case Direction.SOUTH:
        y -= 1;
        break;
      case Direction.WEST:
        x -= 1;
        break;
    }
  }

  // Execute a list of commands (R, L, A)
  void executeInstructions(String instructions) {
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
  Robot robot = Robot(7, 3, Direction.NORTH);
  String instructions = "RAALAL";
  robot.executeInstructions(instructions);
  robot.Position(); 
}
