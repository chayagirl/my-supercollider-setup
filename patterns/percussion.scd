(
Pdef(\kick,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pseq([~patch2], inf),
		\group, ~sources,
		\buf, Pshuf([~f1, ~a20, ~h13, ~g15], inf).stutter(2),
		\atk, 0,
		\rel, 2,
		\amp, Pshuf(([
			1, 1, 0, 0, 1, 1, 1, 1,
			1, 1, 0, 0, 1, 1, 0, 0,
		]).stutter(4), inf),
		\dur, 1/2,
		\stretch, 60/140,
		\pan, Pwhite(-1, 1, inf),
		\pos, 23,
		\rate, 1
	);
).play(quant:60/~mt);
)

(
Pdef(\hat,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pseq([~patch2], inf),
		\group, ~sources,
		\buf, Pseq([~a2, ~d16, ~a14, ~d15].stutter(4), inf),
		\atk, 0,
		\rel, 1,
		\amp, Pshuf(([
			0, 0, 1, 0, 0, 1, 0, 0,
		].stutter(2)), inf),
		\dur, 1/2,
		\stretch, 60/140,
		\pan, Pwhite(-1, 1, inf),
		\pos, 23,
		\rate, 1/4
	);
).play(quant:60/~mt);
)

(
Pdef(\perc,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pseq([~patch1], inf),
		\group, ~sources,
		\buf, ~g8,
		\atk, 0,
		\rel, 0.2,
		\amp, Pshuf((([
			0, 0, 1, 0, 0, 1, 0, 0,
	])*4).stutter(2), inf),
		\dur, 1/2,
		\stretch, 60/140,
		\pan, Pwhite(-1, 1, inf),
		\pos, 23,
		\rate, 1
	);
).play(quant:60/~mt);
)