(
Pdef(\coulomb,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pshuf([~patch1, ~patch3, ~patch2], inf),
		\group, ~sources,
		\buf, Pshuf([~e2, ~e3, ~a16, ~e16, ~e10, ~a20, ~d20], inf),
		\atk, 3,
		\rel, 15,
		\amp, 1,

		\stretch, 60/~mt,
		\dur, Pfunc({f[2]}),

		\rate, Pshuf([1, 2, 3, 4, Pwhite(0.3, 5), Pwhite(0.3, 5), Pwhite(0.3, 5), Pwhite(0.3, 5)], inf),
		\pos, 44100*0,
		\loop, 1
	);
).stop(quant:60/~mt);

Pdef(\pitchShift,
	Pbind(
		\type, \set,
		\id, ~channel3.nodeID,
		\args, #[\pan, \windowSize, \pitchRatio, \pitchDispersion],
		\dur, 4,
		\pan, Pwhite(-0.8, 0.8).trace,
		\windowSize, Pshuf([6, 7, 8], inf),
		\pitchRatio, Pshuf([1, 2, 3, 4], inf),
		\pitchDispersion, Pshuf([1, 2, 7, 8], inf).trace,
		\timeDispersion, 2,
		\stretch, 60/~mt
	);

).play;
)

~n2.play