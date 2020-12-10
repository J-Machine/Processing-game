/********* VARIABLES *********/

// We control which screen is active by settings / updating
// gameScreen variable. We display the correct screen according
// to the value of this variable.
//
// 0: Initial Screen
// 1: Game Screen
// 2: Game-over Screen

int gameScreen = 0;

/********* SETUP BLOCK *********/

void setup() {
  size(800, 800);
}


/********* DRAW BLOCK *********/

void draw() {
  // Display the contents of the current screen
  if (gameScreen == 0) {
    initScreen();
  } else if (gameScreen == 1) {
    gameScreen();
  } else if (gameScreen == 2) {
    gameOverScreen();
  }
}


/********* SCREEN CONTENTS *********/
/*
  Solo CONTENIDO de las pantallas, no funcionalidad
*/
void initScreen() {
  // codigo de la pantalla de Inicio
  background(0);
  textAlign(CENTER);
  text("Click to start", height/2, width/2);
}
void gameScreen() {
  // código de la pantalla cuando ya inició el juego
  background(150);
}
void gameOverScreen() {
  // código de la pantalla de GameOver
  background(150,0,0);
  textAlign(CENTER);
  text("GAME OVER", width/2, height/2 - 50);
  text("Click to restart", height/2, width/2);
}



/********* INPUTS *********/

public void mousePressed() {
  // if we are on the initial screen when clicked, start the game
  if (gameScreen==0) {
    startGame();
  } else if (gameScreen==1){
    gameOver();
  } else if (gameScreen==2){ 
    // Estando en gameOver Screen, al hacer click se reestablece (vuelve a pantalla de inicio)
    restart();
  }

}


/********* OTHER FUNCTIONS *********/

// Método con los valores de las variables para iniciar el juego 
void startGame() {
  gameScreen = 1;
}

// Método Detiene el juego 
void gameOver(){
  gameScreen = 2;

}

// Método para volver a empezar el juego desde cero, 
// reinicia variables del jeugo. Vuelve a la pantalla de inicio
void restart() {
  gameScreen = 0;
}
