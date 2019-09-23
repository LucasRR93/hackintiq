import processing.serial.*;

Serial myPort;
int linefeed = 10;   // Linefeed in ASCII
int numSensors = 2;  // we will be expecting for reading data from four sensors
int sensors[];       // array to read the values
int sensor1;
int sensor2;
 

void setup(){
size(330, 330);

  myPort = new Serial(this, Serial.list()[1], 9600);
  // read bytes into a buffer until you get a linefeed (ASCII 10):
  myPort.bufferUntil(linefeed);

//criando novos objetos
mostrador1 = new Mostrador(color(50, 55, 100),-1,30); // (cor, altura, X)
mostrador2 = new Mostrador(color(100, 55, 100),-1,90);
mostrador3 = new Mostrador(color(50, 100, 100),-1,150);

}

void draw(){
  background(200);
  fill(255);
  rect(30,30,200,270);
  
  if (sensors != null) {
    sensor1 = int(map(sensors[0],0,1023,0,-270));
    sensor2 = int(map(sensors[1],0,1023,0,-270));
  }
  
  mostrador1.display(sensor1);
  mostrador2.display(sensor2);
  mostrador3.display(-10);
}


Mostrador mostrador1; //declarando objetos
Mostrador mostrador2;
Mostrador mostrador3;


class Mostrador { //criando a classe
  color c;
  int altura;
  int largura;
  int xpos;
  int ypos;
  
  Mostrador(color clr,int tempaltura,int tempxpos){ //construtor da classe, funciona como setup
    c = clr;
    altura = tempaltura;
    largura = 30;
    xpos = tempxpos;    
    ypos = 300;
  }

  void display(int tempaltura){ //função interna que pode ser usada no draw
    fill(c);
    rect(xpos,ypos,largura,tempaltura);
  }  
}


void serialEvent(Serial myPort) {

  // read the serial buffer:
  String myString = myPort.readStringUntil(linefeed);

  // if you got any bytes other than the linefeed:
  if (myString != null) {

    myString = trim(myString);

    // split the string at the commas
    // and convert the sections into integers:
    sensors = int(split(myString, ','));

    // print out the values you got:    
    print("1:" + sensors[0] + " | " + "2:" + sensors[1]);

    // add a linefeed after all t he sensor values are printed:
    println();

  }
}
