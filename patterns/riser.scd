~mt = 130

(
Pdef(\riser,
	Pbind(
		\instrument, \bufplaya3,
		\patch, Pshuf([~patch1], inf),
		\group, ~sources,
		\buf, Pshuf([

			//Pseq([~a6, ~a7, ~a8, ~a9], inf),
			//Pseq([~a14, ~a15], inf),
			//Pseq([~a16, ~a17], inf),
			//Pseq([~c3, ~c4, ~c5, ~c6, ~c7, ~c8], inf),
			//Pseq([~f3], inf),
			//Pshuf([~o1, ~o2, ~o3, ~o4, ~o5, ~o6, ~o7], inf),
			//Pshuf([~r1, ~r2, ~r19, ~r20], inf)

			Pshuf([~e20], inf)

		], inf),

		\dur, 1/8,
		\atk, 0,
		\rel, 60/~mt/(1/Pkey(\dur, inf))*8,
		\amp, 1,

		\stretch, 60/~mt,


		\rate, Pgeom(1, 1.01, inf),
		\pos, Pseries(0, 44100/3, inf),
		\loop, 1
	);
).stop(quant:60/~mt);
)