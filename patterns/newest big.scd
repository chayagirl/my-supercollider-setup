(
Pdef(\multipurpose2,
	Pbind(
		\instrument, Prand([

		\bufplaya3, \bufplaya6, \bufplaya3

		], inf),
		\patch, Pshuf([~patch1], inf),
		\group, ~sources,
		\buf, Pshuf([


			Pshuf([~e11, ~e12, ~a13, ~b14], inf)


		], inf).stutter(8),
		\atk, 0,
		\dur, Pfunc({f[1]}),
		\rel, 60/~mt/(1/Pkey(\dur, inf)) +Pxrand([0.2, 0.2, 0.2, 0.2, 0.2, 0.2, 1.2], inf),

		\amp, Pshuf([

			Pshuf([1, 1, 1, 1, 0, 0, 0, 0], inf),

			Pseq([1, 1, 1, 0], inf),

			Pseq([1, 0, 1, 0, 1, 0, 1, 0], inf),

			Pshuf([1, 1, 1, 1, 1, 1, 0, 0], inf),

			Pshuf([0, 1, 1, 1, 1, 1, 1, 1], inf),

			Pshuf([0, 1, 1, 1], inf),

			Pshuf([1, 1, 1, 1, 0.5, 0, 1, 1], inf),

			Pshuf([0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1,
				0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1
			], inf)

		], inf),

		\stretch, 60/~mt,

		//\dur, 1,
		\rate, Pshuf([1, 0.5, 2, 0.5], inf).stutter(1)*10,
		\pos, 44100*0.01,
		\loop, Pshuf([1], inf),
		\arptime, 0.05,
		\impulsetime, 200*Pfunc({f[2]}),
		\kickenv, Pshuf([1, 0.5, 2, 0.5]/2, inf).stutter(2)
	);
).play(quant:60/~mt);
)


~mt = 140
Buffer.freeAll

s.scope;
s.meter;
s.plotTree;