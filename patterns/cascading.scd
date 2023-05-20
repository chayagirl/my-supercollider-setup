~mt = 110

(
Pdef(\cascading,
	Pbind(
		\instrument, \bufplaya8,
		\patch, Pshuf([~patch7, ~patch4, ~patch5], inf),
		\group, ~sources,
		\buf, Pseq([~g2, ~h5, ~i6, ~i19], inf),
		\atk, 0,
		\dur, 2,
		\rel, 0.4,

		\amp, 1,

		\stretch, 60/~mt,



		\rate, Pshuf([1], inf),//*Pfunc({f[0]}),
		\pos, Pseries(1, 44100*0.3, inf),
		\impulsetime, 3000,

		\loop, Pshuf([1], inf)
	);
).play(quant:60/~mt);
)

~m12.play

thisProcess.platform.recordingsDir