(
Pdef(\name7,
	Pbind(
		\instrument, Pshuf([\bufplaya6, \bufplaya, \bufplaya6, \bufplaya6, \bufplaya5, \bufplaya, \bufplaya, \bufplaya2], inf),
		\patch, Pshuf([~patch4, ~patch5, ~patch6, ~patch7], inf),
		\group, ~sources,
		\buf, Pshuf([~c11, ~b12, ~x13, ~a19, ~x12], inf).stutter(7),
		\atk, 0,
		\rel, 60/~mt/(1/Pkey(\dur, inf)),
		\amp, Pshuf([
			1
	], inf),
		\dur, 1,
		\rate, Pseq([1, 2, 2, 1, 0.5, 0.25, 2/3, 3/2], inf).stutter(4),
		\pos, 44100,//Pfunc({f[3]}),
		\stretch, 60/~mt,
		\loop, 1

	);
).play(quant:60/~mt);
)

//footwork pseq
Pshuf([
			Pseq([
				1, 0, 0, 1, 0, 1, 0, 0
			], inf),

			Pseq([
				1, 0, 0, 1, 0, 0, 1, 0
			], inf),

			Pseq([
				1, 0, 0, 0, 1, 0, 0, 0,
				1, 0, 0, 1, 0, 0, 1, 0
			], inf)
		], inf)