//ligar o servidor
//command + enter       - avalia a linha onde o cursor está
//command + "." (ponto) - desliga o som

{LFSaw.ar(freq:MouseX.kr(100, 500), mul:0.1)!2}.play

{LFPulse.ar(300, mul:LFTri.ar(freq:MouseX.kr(0.1, 1000), mul:0.1))!2}.play

{SinOsc.ar(freq:SinOsc.kr(freq:3).range(300, 500), mul:0.1)!2}.play

{LFTri.ar(freq:LFNoise0.kr(freq:4).range(500, 1000), mul:0.1)!2}.play;

{SinOsc.ar(freq:XLine.kr(200, 1000, 10), mul:Saw.ar(MouseX.kr(1, 10), mul:0.1))!2}.play

{LPF.ar(Gendy1.ar(minfreq:400, maxfreq:420), LFTri.kr(1).range(100, 1500), mul:0.1)!2}.play

{Ringz.ar(Dust.ar(20), MouseX.kr(2000, 2900), mul:0.1)!2}.play