(
Pdef(\newletsgo5,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pshuf([~patch3], inf),
		\group, ~sources,
		\buf, Pshuf([~c9, ~f3, ~a2, ~g1].stutter(2), inf).trace,
		\atk, 5,
		\rel, 16,

		\amp, 1,

		\stretch, 60/~mt,
		\dur, 8.7,

		\rate, Pshuf(([30, 40, 21, 22, 29]/30), inf).trace,
		\pos, Pwhite(0, 0.4)*44100,
		\loop, Pshuf([1], inf),
		\trig, Pseq([0, 1, 0, 1], inf)
	);
).play(quant:60/~mt);
)


~l9.play