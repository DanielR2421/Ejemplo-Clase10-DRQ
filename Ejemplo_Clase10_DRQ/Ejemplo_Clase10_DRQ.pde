/* Operadores logicos:
And: &&
Not: (!)
Or: (||) */



//EJERCICIO 1: Operador NOT (!)

boolean circulo = true;

void setup() {
  size(500, 500);
  textSize(18);
}

void draw() {
  background(0);
  fill(255);
  
  text("circulo = " + circulo, 20, 50);
  text("!circulo = " + !circulo, 20, 100);
  
}

void mousePressed() {
  circulo = !circulo;
}

// Operador AND (&&)

/*boolean hayElectricidad = true;
boolean interruptorEncendido = false;

void setup() {
  size(400, 200);
  background(255);  
  if (hayElectricidad && interruptorEncendido) {
    fill(255, 255, 0); // Amarillo (luz encendida)
    text("La luz está ENCENDIDA", 100, 100);
  } else {
    fill(0); // Negro (luz apagada)
    text("La luz está APAGADA", 100, 100);
  }
} */

//codigo para OR ||
/*void setup () {
size(400, 400);
void draw) {
if (key == 'a' || key == 'b') {
background (255, 0, 0);
} else {
background (255) ;
}
}*/

//USAR WINDSURF PARA AL  ENFOCAR LA INTELIGENCIA ARTIFICIAL 
//WINDSURF permite correr los comandos en la terminal del programa entoces puede ser mas utili para saber que comandos correr
//Otra alternativa puede ser cursor pero la verdad que es relativamente basura

//Processing para web P5.js
