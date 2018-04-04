// Glossário de funções que já vimos no SuperCollider

// Lembrem-se que as funções possuem argumentos
// Quando em dúvida sobre os argumentos, leiam a documentação
// Para acessar a documentação de uma função, colocar o cursor de texto na função e usar o atalho Ctrl + D (command + D no Mac)

s.boot
s.quit

{}.play

SinOsc.ar()
Saw.ar()
LFTri.ar()
Pulse.ar()

WhiteNoise.ar()
BrownNoise.ar()

rrand()
MouseX.kr()
MouseY.kr()
Line.ar()

s.volume.gui
s.meter

LPF.ar()
HPF.ar()
Ringz.ar()
Dust.ar()
Impulse.ar()

{}.freqscope

var variavelLocal
~variavelGlobal
.free
