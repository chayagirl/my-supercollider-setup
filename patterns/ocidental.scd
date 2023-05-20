(


SynthDef.new(\player, { //regular, with a release tail
	arg amp=1, pan=0, rate=1, atk=1, rel=1, pos=0, gate=1, loop=0, patch=1, buf, trig=1;
	var sig, env;
	env = EnvGen.kr(Env.perc(atk, rel), gate, doneAction:2);
	sig = PlayBuf.ar(2, buf, BufRateScale.kr(buf)*rate, trig, pos, loop);
	sig = Convolution.ar(sig, Slope.ar(sig), 512);
	sig = sig * env*0.3;
	sig = Pan2.ar(sig, pan);
	sig = Compander.ar(sig, sig);
	sig = Out.ar(patch, sig * amp);
}).add;


Pdef(\ocidental,
	Pbind(
		\instrument, Prand([\player], inf),
		\patch, Pshuf([~patch1], inf),
		\group, ~sources,
		\buf, Pshuf([
			//Pshuf([~e2, ~e4, ~d3, ~c16, ~c6], inf).stutter(8),

			Pshuf([~a5, ~b6, ~c7, ~d8], inf).stutter(4),
		].stutter(4), inf),
		\atk, 0,
		\dur, 1/2,
		\rel, 0.2 + Prand([
			0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 3], inf),

		\amp, Pshuf([

			Pshuf([0, 0, 1, 1, 1, 1, 1, 1], inf),
			Pshuf([0, 1, 1, 1, 1, 1, 1, 1], inf),
			Pshuf([1, 1, 1, 1, 1, 1, 1, 1], inf),

		], inf),

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pshuf([1, 3, 2, 2], inf).stutter(2),
		\pos, 44100*0,
		\loop, Pshuf([1], inf),
		\arptime, 0.07,
		\impulsetime, 400,
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(4)
	);
).stop(quant:60/~mt);

)