(
Pdef(\multipurpose1,
	Pbind(
		\instrument, Pshuf([
			Pseq([\bufplaya].stutter(1)),


		], inf),
		\patch, Pshuf([~patch2, ~patch3], inf).stutter(4),
		\group, ~sources,
		\buf, Pshuf([

			Pshuf([~n20, ~m20, ~m1, ~m2], inf).stutter(4),

		], inf),
		\atk, 0,
		\dur, Pwhite(0.3, 1),
		\rel, Pwhite(7, 15),

		\amp, 1,

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pshuf([1, 2, 0.5, 1], inf).stutter(1),
		\pos, 44100*Pfunc({f[3]}),
		\loop, Pshuf([1], inf),
		\arptime, 0.05,
		\impulsetime, 600,
		\kickenv, Pshuf([1, 0.5, 2, 0.5]/2, inf).stutter(1)
	);
).stop(quant:60/~mt);
)