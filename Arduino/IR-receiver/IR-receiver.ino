/**
 * Receptor de infravermelho com 3 sensores
 * by Lucas Rodrigues 
 * 
 * Nota: separar as leituras por alguns milisegundos para reduzir o ruído na referencia ADC
*/

//pins com sinal dos receptores IR
int IRpin1 = A0; 
int IRpin2 = A1;
int IRpin3 = A2;

void setup() {
  Serial.begin(9600);  
}

void loop() {

IRValue1 = analogRead(IRpin1);
delay(2); //delay para diminuir interferencia enter sensores
IRValue2 = analogRead(IRpin2);
delay(2);
IRValue3 = analogRead(IRpin3);

Serial.print(IRValue1);
Serial.print(",");
Serial.print(IRValue2);
Serial.print(",");
Serial.print(IRValue3);
Serial.println();

delay(2);
}
