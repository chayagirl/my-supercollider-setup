(
SynthDef.new(\upward, { //for upward arpeggios
	arg amp=1, pan=0, rate=1, atk=1, rel=1, pos=0, gate=1, loop=0, patch=1, buf, trig=1, mult=2, arptime=0.05, impulsetime=400;
	var sig, env, env2;
	env = Line.kr(1, 1, rel, doneAction:2);
	env2 = EnvGen.kr(Env.perc(atk, 999));
	sig = PlayBuf.ar(2, buf, BufRateScale.kr(buf)*rate*EnvGen.kr(Env.new([mult, mult*2, mult*3, mult*4, mult*5], arptime, -999), Impulse.ar(impulsetime)), trig, pos, loop);
	sig = sig * env * env2;
	sig = Pan2.ar(sig, pan);
	sig = Compander.ar(sig, sig);
	sig = Out.ar(patch, sig * amp);
}).add;

(
Pdef(\bigone,
	Pbind(
		\instrument, \upward,
		\patch, Pshuf([~patch1], inf),
		\group, ~sources,
		\buf, Pshuf([~d1, ~d2, ~d3, ~d5].stutter(1), inf),
		\atk, 0,
		\dur, 1/4,
		\rel, 60/~mt/(1/Pkey(\dur, inf))+0.5,

		\amp, 1,

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, 1,
		\pos, 44100*0,
		\loop, Pshuf([1], inf),
		\arptime, Pwhite(0.01, 0.1),
		\impulsetime, 1000,
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(4),
		\mult, Pwhite(-0.5, 0.5).trace
	);
).play(quant:60/~mt);
)

)

12.exp