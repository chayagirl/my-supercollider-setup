(
Pdef(\multipurpose1235,
	Pbind(
		\instrument, Pshuf([
			Pseq([\bufplaya3].stutter(4)),


		], inf),
		\patch, Pshuf([~patch5, ~patch1, ~patch2, ~patch3, ~patch4, ~patch5, ~patch6, ~patch7], inf),
		\group, ~sources,
		\buf, Pshuf([

			Pshuf([~o1, ~f2, ~c4, ~c5], inf).stutter(8)

		], inf),
		\atk, 0,
		\dur, 1/8,
		\rel, 60/~mt/(1/Pkey(\dur, inf))+0.1,

		\amp, Pshuf([
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
		], inf),

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pshuf([1, 2, 0.5, 1], inf).stutter(1)*Pfunc({f[1]}),
		\pos, 44100*Pwhite(0, 0.3),
		\loop, Pshuf([1], inf),
		\arptime, 0.05,
		\impulsetime, 1000,
		\kickenv, Pshuf([1, 0.5, 2, 0.5]*5, inf).stutter(1)
	);
).stop(quant:60/~mt);
)

Buffer.freeAll