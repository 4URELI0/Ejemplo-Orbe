PImage personaje;
PImage orbes;
float hipotenusa = 180;
float angulo = 0;
float numeroOrbes = 6;
void setup(){
size(1000,1000);
personaje = loadImage("personaje.png");
personaje.resize(400,0);

orbes = loadImage("Orbe1.png");
orbes.resize(75,0);
}
void draw(){
background(0);
/*Centralizar al personaje*/
float x = width/2;
float y = height/2;
/* Mostrar el personaje en el centro de la pantalla */
  imageMode(CENTER);
  image(personaje, x, y);
  
  /* Mostrar el orbe en las coordenadas calculadas */
   /* Mostrar los orbes en sus posiciones calculadas */
  for (int i = 0; i < numeroOrbes; i++) {
    float anguloOrbe = 0 + TWO_PI / numeroOrbes * i; // Calcular el ángulo para cada orbe
    float xOrbe = x + hipotenusa * cos(anguloOrbe + angulo); // Calcular la coordenada x del orbe
    float yOrbe = y + hipotenusa * sin(anguloOrbe + angulo); // Calcular la coordenada y del orbe
    image(orbes, xOrbe, yOrbe);
  }
  /* Incrementar el ángulo para la próxima iteración */
  angulo += 0.03; // Ajusta la velocidad de rotación según sea necesario
}
