import processing.serial.*;

println(Serial.list());
//printArray(Serial.list());

String nomePorta = Serial.list()[9];
println(nomePorta);