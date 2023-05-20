(
Pdef(\arpies,
	Pbind(
		\instrument, \bufplaya,
		\patch, Pshuf([~patch4, ~patch5], inf),
		\group, ~sources,
		\buf, Place([

			Pshuf([~g17, ~h1, ~g1, ~b8].stutter(), inf),
			Pshuf([~g4, ~c5, ~i6, ~a7], inf),
			Pshuf([~g1, ~g2, ~i3, ~i4], inf)


		].stutter(), inf),
		\atk, 0.0,
		\dur, 2,
		\rel, 60/~mt/(1/Pkey(\dur, inf)) + Pshuf([
			Pwhite(0, 0.3),
			Pwhite(0, 0.3),
			Pwhite(0, 0.3),
			Pwhite(0, 0.3)
		], inf)*2,

		\amp, Pshuf([

			Pshuf([0, 1, 1, 1, 1, 1, 1, 1], inf),
			Pshuf([0, 1, 1, 1], inf),
			Pshuf([1, 1, 1, 1, 0.5, 0, 1, 1], inf),
			Pshuf([0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, ], inf)

		], inf),

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pseq([1, 0.5, 2, 1, 3/2, 2, 2, 1], inf).stutter(4),
		\pos, 44100*0,
		\loop, 1,
		\arptime, 0.1,
		\impulsetime, 800,
		\kickenv, Pshuf([1, 0.5, 2, 0.5]/2, inf).stutter(2)
	);
).play(quant:60/~mt);
)

~m1.play;