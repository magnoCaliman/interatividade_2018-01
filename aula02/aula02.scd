//isso é um comentário sobre o código

//comentários servem para o seu eu do presente
//deixar recados para o seu eu do futuro

//supercollider não avalia o documento inteiro de uma única vez.
//é possível interpretar cada função, cada instrução, individualmente

2+2
3*((57/4.765)*pi.sqrt)

rrand(20, 30)
rrand(0.0, 1.0)

//como se dá essa leitura no Processing?

s.boot //liga o servidor. sem isso, nada funciona...
s.quit //desliga o servidor

{
	//aqui dentro, vai rodar
}.play

{SinOsc.ar(freq:400, mul:0.1)}.play

//alguns geradores de som...
//command + "." (ponto) - desliga o som!

//osciladores
{SinOsc.ar(freq:400, mul:0.1)}.play //forma de onda senoidal
{Pulse.ar(freq:400, mul:0.1)}.play  //forma de onda quadrada
{Saw.ar(freq:400, mul:0.1)}.play    //I wanna play a game...
{LFTri.ar(freq:400, mul:0.1)}.play  //forma de onda triangular

//geradores de ruído
{WhiteNoise.ar(mul:0.2)}.play
{PinkNoise.ar(mul:0.2)}.play
{BrownNoise.ar(mul:0.2)}.play

//funções podem ser argumentos de outras funções!
rrand(200, 300) //gera um número entre 200 e 300

{Pulse.ar(freq:rrand(200, 300), mul:0.1)}.play //usa rrand como argumento do Pulse!
                                               //leitura "de dentro para fora"

//outras funções interessantes para usar como argumentos dos geradores de som
{MouseX.kr(minval:10, maxval:20).poll}.play
{MouseY.kr(minval:100, maxval:200).poll}.play
{Line.kr(start:10, end:100, dur:10).poll}.play

{Saw.ar(freq:MouseX.kr(minval:200, maxval:500), mul:0.1)}.play
{BrownNoise.ar(mul:MouseY.kr(minval:0.1, maxval:0.8))}.play

{LFTri.ar(freq:600, mul:Line.kr(start:0, end:0.5, dur:5))}.play
{WhiteNoise.ar(mul:Line.kr(start:1, end:0, dur:0.05))}.play

//maneira simples de rodar duas funções simultaneamente

(
{SinOsc.ar(freq:300, mul:0.4)}.play; //agora com ponto e vírgula depois do play!
{SinOsc.ar(freq:300.5, mul:0.4)}.play;
)

(
{WhiteNoise.ar(mul:Line.kr(start:0, end:0.5, dur:10))}.play;
{BrownNoise.ar(mul:Line.kr(start:0.5, end:0, dur:10))}.play;
)

(
{Saw.ar(freq:Line.kr(start:100, end:rrand(700, 800), dur:3), mul:0.2)}.play;
{Saw.ar(freq:Line.kr(start:100, end:rrand(700, 800), dur:3), mul:0.2)}.play;
{Saw.ar(freq:Line.kr(start:100, end:rrand(700, 8000), dur:8), mul:0.2)}.play;
{Saw.ar(freq:Line.kr(start:100, end:rrand(700, 800), dur:3), mul:0.2)}.play;
{Saw.ar(freq:Line.kr(start:100, end:rrand(700, 800), dur:3), mul:0.2)}.play;
)