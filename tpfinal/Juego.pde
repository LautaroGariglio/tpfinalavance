class Juego{

int n;
// Pantalla //
Pantallas Imagen;

Juego(){
  n=0; // menu
  Imagen = new Pantallas();
}
void Iniciar(){
  if(n == 0){
     Imagen.mostrarPantalla();
     
  }
}
}
