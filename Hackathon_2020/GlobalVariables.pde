//final ArrayList<Player> Players = new ArrayList<Player>();
final ArrayList<Level> Levels = new ArrayList<Level>();

final float gravity = .4; // subject to change
final float friction = 0.99; // the multiplier that affects speed. subject to change
final float maxXSpeed = 1;
final float maxYSpeed = 2;

final float airFrict = 0.98;
final float groundFrict = 0.8;
final float speed = 0.75;


final int TITLE = -1;
final int CONTROLS = -2;
final int BACKSTORY = -3;
final int CREDITS = -4;

final int LEVEL0  = 0;
final int LEVEL1  = 1;
final int LEVEL2  = 2;
final int LEVEL3  = 3;
final int LEVEL4 = 4;

int currentLevel = TITLE;