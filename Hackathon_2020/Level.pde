class Level {
  final int startX;
  final int startY;
  final ArrayList<CollidableObject> CollidableObjects;
  final color backgroundColor;

  public Level(ArrayList<CollidableObject> CollidableObjects, int startX, int startY, color backgroundColor) {
    this.CollidableObjects = CollidableObjects; //<>//
    this.startX = startX;
    this.startY = startY;
    this.backgroundColor = backgroundColor;
  }

  //public Level(int startX, int startY, color backgroundColor, CollidableObject... CollidableObjects) {
  //  this.startX = new int[1];
  //  this.startX[0] = startX;
  //  this.startY = new int[1];
  //  this.startY[0] = startY;
  //  this.backgroundColor = backgroundColor;
  //  this.CollidableObjects = new ArrayList<CollidableObject>();
  //  for (int i = 0; i < CollidableObjects.length; i++) {
  //    this.CollidableObjects.add(CollidableObjects[i]);
  //  }
  //}

  //public Level(ArrayList<CollidableObject> CollidableObjects, int[] startX, int[] startY, color backgroundColor) {
  //  if (startX.length != Players.size() || startY.length != Players.size() || startX.length != startY.length) throw new IllegalArgumentException("startX and startY int[] must have same length as Players.size");
  //  this.CollidableObjects = CollidableObjects;
  //  this.startX = startX;
  //  this.startY = startY;
  //  this.backgroundColor = backgroundColor;
  //}

  //public Level(int[] startX, int[] startY, color backgroundColor, CollidableObject... CollidableObjects) {
  //  if ((startX.length != 1 || startY.length != 1) && (startX.length != Players.size() || startY.length != Players.size()) || startX.length != startY.length) throw new IllegalArgumentException("startX and startY int[] must have same length as Players.size");
  //  this.startX = startX;
  //  this.startY = startY;
  //  this.backgroundColor = backgroundColor;
  //  this.CollidableObjects = new ArrayList<CollidableObject>();
  //  for (int i = 0; i < CollidableObjects.length; i++) {
  //    this.CollidableObjects.add(CollidableObjects[i]);
  //  }
  //}

  public CollidableObject getCollidableObject(int i) {
    return CollidableObjects.get(i);
  }

  public void display() {
    background(backgroundColor);
    for (int i = 0; i < CollidableObjects.size(); i++) {
      CollidableObjects.get(i).display();
      for (int j = 0; j < Players.size(); j++) {
        CollidableObjects.get(i).update(Players.get(j));
      }
    }

    for (int i = 0; i < Players.size(); i++) {
      Players.get(i).display();
      Players.get(i).move();
    }
  }

  public void killPlayers() {
    Players.get(0).x = startX;
    Players.get(0).y = startY;
    Players.get(1).x = startX;
    Players.get(1).y = startY;
    //if (startX.length == 1) {
    //  println("l1");
    //  for (int i = 0; i < Players.size(); i++) {
    //    Players.get(i).x = startX[0];
    //    Players.get(i).y = startY[0];
    //    println(startX[0] + "  " + startY[0]);

    //    Players.get(i).xs = 0;
    //    Players.get(i).ys = 0;
    //  }
    //} else {
    //  println("l");
    //  for (int i = 0; i < Players.size(); i++) {
    //    Players.get(i).x = startX[i];
    //    Players.get(i).y = startY[i];

    //    Players.get(i).xs = 0;
    //    Players.get(i).ys = 0;
    //  }
    //}
  }
}
