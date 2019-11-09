class Level {
  final ArrayList<CollidableObject> CollidableObjects;
  final color backgroundColor;

  public Level(ArrayList<CollidableObject> CollidableObjects, color backgroundColor) {
    this.CollidableObjects = CollidableObjects;
    this.backgroundColor = backgroundColor;
  }

  public Level(color backgroundColor, CollidableObject... CollidableObjects) {
    this.backgroundColor = backgroundColor;
    this.CollidableObjects = new ArrayList<CollidableObject>();
    for (int i = 0; i < CollidableObjects.length; i++) {
      this.CollidableObjects.add(CollidableObjects[i]);
    }
  }
  
  public CollidableObject getCollidableObject(int i) {
    return CollidableObjects.get(i);
  }
  
  public void display() {
    for (int i = 0; i < CollidableObjects.size(); i++) {
      CollidableObjects.get(i).display();
    }
  }
}
