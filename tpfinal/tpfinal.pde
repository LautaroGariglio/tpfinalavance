// biblioteca de sonido //
import ddf.minim.*;
 
// variables para reproducir sonidos //
Minim minim;
AudioPlayer player; 
// Clase juego //
Juego Jueguito;
// pantallas //
int Pantallas = 17;
PImage [] Pantalla = new PImage [Pantallas];

// fuente // 
PFont font;

// texto de las Pantallas //
int texto = 21;
String [] textos= new String [texto];

// botones //
int Botones = 14;
String [] txtBoton = new String [Botones];

// Navegador //
int i, tx, ty;
// variables para los botones //
int xnormal1, xnormal2, ynormal, ancho, alto;


void setup() {
  Jueguito = new Juego();
  minim = new Minim(this);
  player = minim.loadFile("click.wav");
  size(1024, 768);
  fill(0);
  font = loadFont("BookmanOldStyle-Bold-32.vlw");
  textFont(font);
  i = 0;
  Pantalla[0] = loadImage("Bosque.jpg");  // titulo
  Pantalla[1] = loadImage("Bosquedia.jpg"); // primera pantalla  
  Pantalla[2] = loadImage("Bosqueoso.jpg"); // ves al oso de lejos
  Pantalla[3] = loadImage("Bosquediaososentado.jpg"); // Cuando te haces el muerto
  Pantalla[4] = loadImage("Bosquenoche.jpg"); // noche sola
  Pantalla[5] = loadImage("Bosquemoustro.jpeg"); // noche con moustro
  Pantalla[6] = loadImage("Cabaña.jpg"); // llegas a la cabaña
  Pantalla[7] = loadImage("Cabañainterior.jpg"); // Entras a la cabaña
  Pantalla[8] = loadImage("Cabañanoche.jpeg"); // Te quedas en la cabaña
  Pantalla[9] = loadImage("Cueva.jpg"); // llegas a la cueva
  Pantalla[10] = loadImage("Cuevaoso.jpeg"); // sale el oso de la cueva
  Pantalla[11] = loadImage("Muertedia.jpeg"); // muertedia
  Pantalla[12] = loadImage("Muertenoche.jpeg"); // muerte noche
  Pantalla[13] = loadImage("Muertecueva.jpeg"); // Muerte cueva
  Pantalla[14] = loadImage("Osomata.jpg"); // oso con la boca abierta
  Pantalla[15] = loadImage("Boton.jpg"); // marco del boton
  Pantalla[16] = loadImage("Titulojuego.jpg"); // titulo into the woods
//  Pantalla[17] = loadImage("Cuadrotexto.jpg"); // cuadro para los textos
  // Cargar las pantallas
  textos[0] = ".";// titulo.jpg
  textos[1] = "entraste al bosque a dar un pequeño paseo, caminaste\n unos minutos adentrandote en el bosque";// pantalla 1
  textos[2] = "luego de caminar por unas cuantos minutos, decides\n sentarte a descansar, cuando de repente...";
  textos[3] = "ves a un oso salir de entre los arboles. \n VIENE DIRECTO HACIA TI!";
  textos[4] = "el oso se acerca lentamente, se sienta a un lado tuyo y\n comienza a olfatearte.";
  textos[6] = "mientras corres con todas tus fuerzas para escapar de\n aquel animal hambriento, ves una cabaña cerca. ";
  textos[11] ="A la mañana siguiente, sales para intentar volver a\n casa pero, no sabes cual es el camino correcto.";
  textos[15] = "caminas durante horas, encuentras muy\n agotado.¿Era este el camino correcto?";
  textos[17] = "¡Persevera y triunfaras! despues de caminar horas y horas, reconoces el lugar \n donde te encontraste por primera vez con el oso.¡Este es el camino a casa! ";
  textos[12] = "caminas sin parar, hasta que llegas a una cueva que no habias \n visto antes, entonces decides dar la vuelta, ya que sabes que ese\n no es el camino correcto";
  textos[13] = "Pero antes de qeu te puedas dar veulta, el oso sale disparado \n de la cueva,ERA SU GUARIDA. intentas pero ya es\n demasiado tarde, el oso te tomo por sorpresa.  ";
  textos[5] = "antes de que puedas reaccionar, el oso se lanza \n rapidamente hacia ti ... ¡ES EL FIN!";
  textos[8] = "De tanto correr, te cansaste mucho, perdiste velocidad y \n el oso te atrapo... ¡ES EL FIN!";
  textos[14] = "El oso salta encima tuyo, ya no hay nada que hacer !ES EL FIN!";
  textos[7] =  "Cuando entras en la cabaña, ves que el oso se sienta \n a esperar afuera, asi que tu haces lo mismo";
  textos[9] = "cuando se hace de noche, espias por la ventana y ves que el osos no esta.";
  textos[16] = "un texto para completar";
  textos[10] = "luego de unos pasos, vez unos ojos blancos \n asomandose entre los arboles.\n ¡ES EL CHUPACABRAS!";
  textos[18] = "¡Llegaste al final!";
  textos[20] = "Moriste"; 

  //Mauricio = loadImage("Mauricio.jpg");
  // Cargar los botones
  txtBoton[1] = "Correr";
  txtBoton[2] = "Derecha";
  txtBoton[3] = "Entrar";
  txtBoton[4] = "¡FELICIDADES\n ESCAPASTE!";
  txtBoton[5] = "Hacerte \n el muerto";
  txtBoton[6] = "Izquierda";
  txtBoton[0] = "Menu";
  txtBoton[7] = "Quedarse";
  txtBoton[8] = "Salir";
  txtBoton[9] = "Seguir";
  txtBoton[10] = "Siguiente";
  txtBoton[11] = "Jugar";
  txtBoton[12] = "Volver";
  txtBoton[13] =  "Creditos";
  // tamaño del boton //


}

void draw() {

  /*if (i == 0) {
    funcionPantalla(i, 0, 0, 1024, 768);
    funcionBoton(11, xnormal1, ynormal, tx, ty);
    funcionBoton(8, xnormal2, ynormal, tx, ty);// 8 es igual al numero del arreglo de la imagen
  } else if (i == 1) {
    funcionPantalla(i, 0, 0, 1024, 768);
    funcionBoton(10, xnormal1, ynormal, tx, ty);
  } else if (i == 2) {
    funcionPantalla(i, 0, 0, 1024, 768);
    funcionBoton(10, xnormal1, ynormal, tx, ty);
  } else if (i == 3) {
    funcionPantalla(i, 0, 0, 1024, 768);
    funcionBoton(1, xnormal1, ynormal, tx, ty);
    funcionBoton(5, xnormal2, ynormal, tx, ty);
  } else if (i == 4) {
    funcionPantalla(i, 0, 0, 1024, 768);
    funcionBoton(1, xnormal1, ynormal, tx, ty);
    funcionBoton(7, xnormal2, ynormal, tx, ty);
  } else if (i == 5) {
    funcionPantalla(i, 0, 0, 1024, 768);
    funcionBoton(10, xnormal1, ynormal, tx, ty);
  } else if (i == 6) {
    funcionPantalla(i, 0, 0, 1024, 768);
    funcionBoton(3, xnormal1, ynormal, tx, ty);
    funcionBoton(9, xnormal2, ynormal, tx, ty);
  } else if (i == 7) {
    funcionPantalla(i, 0, 0, 1024, 768);
    funcionBoton(7, xnormal1, ynormal, tx, ty);
  } else if (i == 8) {
    funcionPantalla(i, 0, 0, 1024, 768);
    funcionBoton(10, xnormal1, ynormal, tx, ty);
  } else if (i == 9) {
    funcionPantalla(i, 0, 0, 1024, 768);
    funcionBoton(7, xnormal2, ynormal, tx, ty);
    funcionBoton(8, xnormal1, ynormal, tx, ty);
  } else if (i == 10) {
    funcionPantalla(i, 0, 0, 1024, 768);
    funcionBoton(10, xnormal1, ynormal, tx, ty);
  } else if (i == 11) {
    funcionPantalla(i, 0, 0, 1024, 768);
    funcionBoton(2, xnormal1, ynormal, tx, ty);
    funcionBoton(6, xnormal2, ynormal, tx, ty);
  } else  if (i == 12) {
    funcionPantalla(i, 0, 0, 1024, 768);
    funcionBoton(10, xnormal1, ynormal, tx, ty);
  } else  if (i == 13) {
    funcionPantalla(i, 0, 0, 1024, 768);
    funcionBoton(10, xnormal1, ynormal, tx, ty);
  } else  if (i == 14) {
    funcionPantalla(i, 0, 0, 1024, 768);
    funcionBoton(10, xnormal1, ynormal, tx, ty);
  } else  if (i == 15) {
    funcionPantalla(i, 0, 0, 1024, 768);
    funcionBoton(9, xnormal1, ynormal, tx, ty);
    funcionBoton(12, xnormal2, ynormal, tx, ty);
  } else if (i == 16) {
    funcionPantalla(i, 0, 0, 1024, 768);

  }*/
  Jueguito.Iniciar();
  funcionBoton(0, 900, 40, 100, 40);
}

void clickBoton(int x, int y, int tx, int ty, int accion) {
  if ((mouseX > x) && (mouseX < x + tx) && (mouseY > y) && (mouseY < y + ty)) {
    i = accion;
  
   // player.trigger();
    
  }
}
void clickSalir(int x, int y, int tx, int ty) {
  if ((mouseX > x) && (mouseX < x + tx) && (mouseY > y) && (mouseY < y + ty)) {
    exit();
  }
}
void funcionBoton(int j, float x, float y, int tx, int ty) {
  
  image(Pantalla[15], x, y, tx, ty);
  text(txtBoton[j], x+50, y+25, tx, ty);
 
}
void funcionPantalla(int i, float x, float y, int tx, int ty) {
  image(Pantalla[i], x, y, tx, ty);
  text(textos[i], 200, 500);
}

void mousePressed() {
  clickBoton(900, 20, tx, ty, 0);
  if (i == 0) {
    clickBoton(xnormal1, ynormal, tx, ty, 1);
    clickSalir(xnormal2, ynormal, tx, ty);
  } else if (i == 1) {
    clickBoton(xnormal1, ynormal, tx, ty, 2);
  } else if (i == 2) {
    clickBoton(xnormal1, ynormal, tx, ty, 3);
  } else if (i == 3) {
    clickBoton(xnormal1, ynormal, tx, ty, 6);
    clickBoton(xnormal2, ynormal, tx, ty, 4);
  } else if (i == 4) {
    clickBoton(xnormal1, ynormal, tx, ty, 5);
    clickBoton(xnormal2, ynormal, tx, ty, 5);
  } else if (i == 5) {
    clickBoton(xnormal1, ynormal, tx, ty, 20);
  } else if (i == 6) {
    clickBoton(xnormal1, ynormal, tx, ty, 7);
    clickBoton(xnormal2, ynormal, tx, ty, 8);
  } else if (i == 7) {
    clickBoton(xnormal1, ynormal, tx, ty, 9);
  } else if (i == 8) {
    clickBoton(xnormal1, ynormal, tx, ty, 20);
  } else if (i == 9) {
    clickBoton(xnormal1, ynormal, tx, ty, 10);
    clickBoton(xnormal2, ynormal, tx, ty, 11);
  } else if (i == 10) {
    clickBoton(xnormal1, ynormal, tx, ty, 21);
  } else if (i == 11) {
    clickBoton(xnormal2, ynormal, tx, ty, 15);
    clickBoton(xnormal1, ynormal, tx, ty, 12);
  } else if (i == 12) {
    clickBoton(xnormal1, ynormal, tx, ty, 13);
  } else if (i == 13) {
    clickBoton(xnormal1, ynormal, tx, ty, 14);
  } else if (i == 14) {
    clickBoton(xnormal1, ynormal, tx, ty, 22);
  } else if (i == 15) {
    clickBoton(xnormal1, ynormal, tx, ty, 17);
    clickBoton(xnormal2, ynormal, tx, ty, 11);
  } else if (i == 16) {
    clickBoton(xnormal1, ynormal, tx, ty, 20);
  }
}
