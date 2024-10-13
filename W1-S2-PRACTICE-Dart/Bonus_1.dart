enum direction {North, East, South, West}
class robot{
  int x;
  int y;
  direction dir;

  robot (this.x, this.y, this.dir);

  void turnRight() {
    dir = direction.values[(dir.index + 1)];
  }

  void turnLeft() {
    dir = direction.values[(dir.index - 1)];
  }
    void advance() {
    switch (dir) {
      case direction.North:
        y += 1;  // Move up
        break;
      case direction.East:
        x += 1;  // Move right 
        break;
      case direction.South:
        y -= 1;  // Move down
        break;
      case direction.West:
        x -= 1;  // Move left
        break;
    }
  }

  void instruction(var command){
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
        default:
          print('Invalid command');
    }
  }

  void position(){
    print('position: {$x,$y}, Direction: $dir');
  }

}

void main() {

}