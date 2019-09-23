# hackintiq
Caneta sensível ao toque para tornar qualquer monitor em "touchscreen"

## Resumo
A ideia deste projeto veio a partir de uma busca por alternativas a Cintiq, mas que fosse ajustável a qualquer monitor. Existem poucas soluções no mercado, e muitas delas usam sensores infravermelho e ultrasom. A falta de acesso a esse produto me incentivou a começar esse projeto.
A solução pretendida é usar um conjunto de receptores de infravermelho para captar a luz emitida pelo LED, que estará em uma caneta adaptada.

-------

### Lista de componentes
* TIL32 - LED Emissor IR 5mm;
* TIL78 - Fototransistor Infravermelho 5mm;

### Arduino
* Recebendo sinal IR pelo canal analógico;

### Processing
* Gráfico simples pra mostrar variações do sinal IR

### Bibliografia
[Simple IR Proximity Sensor With Arduino](https://www.instructables.com/id/Simple-IR-proximity-sensor-with-Arduino/)

[Phototransistor-Circuit Diagram,Construction and Its Appplications](https://www.elprocus.com/phototransistor-basics-circuit-diagram-advantages-applications/)

[Implementation of Photodiodes & Phototransistors | DigiKey](https://www.digikey.com/en/articles/techzone/2018/sep/how-to-use-photodiodes-and-phototransistors-most-effectively)

[Arduino - Graph](https://www.arduino.cc/en/tutorial/graph)

[Seguidor de movimento usando sensores IR](http://labdegaragem.com/forum/topics/seguidor-de-movimento-usando-sensores-ir)

---

[Yang Zhang](https://yangzhang.dev/) | Wall++ e Pulp Nonfiction : Dois projetos interessantes usando tinta condutiva e matriz elétrica pra reconhecer posição dos objetos.

[True range multilateration](https://en.wikipedia.org/wiki/True_range_multilateration#math_1) | Fórmula para descobrir posição de um ponto a partir de duas distancias conhecidas desse ponto.

[SendingMultipleData \ Learning \ Wiring](http://wiring.org.co/learning/basics/sendingmultipledata.html) | Código pro processing receber mais de uma informação pela porta serial.

[Multiple analog reads mess up ADC on Arduino UNO](https://github.com/firmata/arduino/issues/334) | Interferencia e ruido em multiplos sensores nas portas analógicas.
