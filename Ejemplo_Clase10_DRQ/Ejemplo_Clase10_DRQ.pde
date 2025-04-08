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
//Utiliza la misma logica de processing pero en version web, windsurf es muy util para eso

//Programa hecho con WindSurf para P5: se me hizo demasido cool jajaj no corre en processing pero en P5 deberia

let particles = [];
const numParticles = 100;
let lastMouseX, lastMouseY;
let mouseStillTime = 0;

function setup() {
  createCanvas(windowWidth, windowHeight);
  colorMode(HSB, 360, 100, 100, 1);
  
  // Create initial particles
  for (let i = 0; i < numParticles; i++) {
    particles.push(new Particle());
  }
  
  // Initialize mouse position
  lastMouseX = mouseX;
  lastMouseY = mouseY;
}

function draw() {
  background(0, 0, 0, 0.1);
  
  // Check if mouse is still
  if (abs(mouseX - lastMouseX) < 0.1 && abs(mouseY - lastMouseY) < 0.1) {
    mouseStillTime++;
  } else {
    mouseStillTime = 0;
  }
  
  // Update last mouse position
  lastMouseX = mouseX;
  lastMouseY = mouseY;
  
  // Update and display particles
  for (let particle of particles) {
    particle.update();
    particle.display();
  }
}

class Particle {
  constructor() {
    this.reset();
  }
  
  reset() {
    this.x = random(width);
    this.y = random(height);
    this.baseSize = random(3, 8);
    this.hue = random(360);
    this.brightness = random(80, 100);
    this.speedX = random(-2, 2);
    this.speedY = random(-2, 2);
  }
  
  update() {
    // Move towards mouse when nearby
    let d = dist(this.x, this.y, mouseX, mouseY);
    if (d < 100) {
      let angle = atan2(mouseY - this.y, mouseX - this.x);
      this.speedX += cos(angle) * 0.2;
      this.speedY += sin(angle) * 0.2;
      
      // Grow size if mouse is still
      if (mouseStillTime > 0 && d < 100) {
        this.currentSize = this.baseSize * (1 + (mouseStillTime * 0.05));
      }
    } else {
      this.currentSize = this.baseSize;
    }
    
    // Apply speed limits
    this.speedX = constrain(this.speedX, -2, 2);
    this.speedY = constrain(this.speedY, -2, 2);
    
    // Update position
    this.x += this.speedX;
    this.y += this.speedY;
    
    // Add some random movement
    this.speedX += random(-0.05, 0.05);
    this.speedY += random(-0.05, 0.05);
    
    // Wrap around edges
    if (this.x < 0) this.x = width;
    if (this.x > width) this.x = 0;
    if (this.y < 0) this.y = height;
    if (this.y > height) this.y = 0;
  }
  
  display() {
    noStroke();
    fill(this.hue, 80, this.brightness, 0.6);
    let size = this.currentSize * (1 + sin(frameCount * 0.1) * 0.2);
    circle(this.x, this.y, size);
    
    // Add glow effect
    for (let i = 0; i < 3; i++) {
      fill(this.hue, 80, this.brightness, 0.1);
      circle(this.x, this.y, size * (2 + i));
    }
  }
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
}
