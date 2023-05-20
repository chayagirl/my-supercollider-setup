(
Pdef(\reverb,
	Pbind(
		\type, \set,
		\id, ~channel2.nodeID,
		\args, #[\pan, \mix, \room, \damp, \amp],
		\dur, 1/8,
		\pan, 0,
		\mix, 0.5,
		\amp, Pseq([1], inf),
		\stretch, 60/~mt
	);
).play;
)

(
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

(
Pdef(\hpf,
	Pbind(
		\type, \set,
		\id, ~channel4.nodeID,
		\args, #[\pan, \freq],
		\dur,2,
		\pan, 0,
		\freq, 50
	);
).play;
)

(
Pdef(\channel6fx,
	Pbind(
		\type, \set,
		\id, ~channel6.nodeID,
		\args, #[\maxdelaytime, \delaytime, \decaytime, \amp],
		\maxdelaytime, 0.5,
		\delaytime, 0.4,
		\dur, 1/8,
		\amp, Pseq([1], inf),
		\stretch, 60/~mt
	);
).play;
)

s.reboot;
s.plotTree;
s.meter;
