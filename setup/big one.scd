//main tempo, change to whatever you want
~mt = 160

(
Pdef(\bigone,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pshuf([~patch1], inf),
		\group, ~sources,
		\buf, Pseq([~z11, ~z12, ~z13, ~z14].stutter(16), inf),
		\atk, 0,
		\dur, 1/4,
		\rel, 60/~mt/(1/Pkey(\dur, inf))*2 + Pwhite(0, 1),

		\amp, Pshuf([
			1, 1, 1, 1

		], inf)*3,

		\stretch, 60/~mt,

		//\dur, 1,>>>>>.
		\rate, Pshuf([1], inf),
		\pos, 44100*0,
		\loop, Pshuf([1], inf),
		\arptime, 0.07,
		\impulsetime, 400,
		\kickenv, Pshuf([1, 0.5, 2, 0.5], inf).stutter(8)
	);
).stop(quant:60/~mt);
)

//Pshuf([1, 0.5, 2, 0.5], inf).stutter(2),

s.boot;
s.meter;
s.plotTree;
s.scope;

~a1.play;

~r8.play;

s.latency

~a5.play;

s.options.numBuffers = 4096

// find where the recordings are written to
thisProcess.platform.recordingsDir
