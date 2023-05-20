(


SynthDef.new(\player2, { //regular, with a release tail
	arg amp=1, pan=0, rate=1, atk=1, rel=1, pos=0, gate=1, loop=0, patch=1, buf, trig=1;
	var sig, env;
	env = EnvGen.kr(Env.perc(atk, rel), gate, doneAction:2);
	sig = PlayBuf.ar(2, buf, BufRateScale.kr(buf)*rate, trig, pos, loop);
	//sig = sig + PitchShift.ar(sig);
	sig = Convolution.ar(sig, TwoTube.ar(sig));
	sig = PermMod.ar(sig,13);
	sig = sig * env;
	sig = Pan2.ar(sig, pan);
	sig = Compander.ar(sig, sig);
	sig = Out.ar(patch, sig * amp);
}).add;


Pdef(\oeste,
	Pbind(
		\instrument, Prand([\player2], inf),
		\patch, Pshuf([~patch1], inf),
		\group, ~sources,
		\buf, Pshuf([
			//Pshuf([~a2, ~b4, ~e3, ~c16, ~d6], inf).stutter(8),

		Pshuf([~p5, ~q6, ~q7, ~q8], inf).stutter(4),
		].stutter(4), inf),
		\atk, 0,
		\dur, 1,
		\rel, 1,

		\amp, Pshuf([

			1

		]*2, inf),

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pshuf([1, 3, 2, 2], inf).stutter(2),
		\pos, 44100*Pseq([Pseries(0, 0.05, 20)], inf),
		\loop, Pshuf([1], inf),
		\arptime, 0.07,
		\impulsetime, 400,
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(4)
	);
).play(quant:60/~mt);

)