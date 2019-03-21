all: build/c3.wav build/c4.wav build/e4-triplet.wav build/g4-triplet.wav build/b4-triplet.wav build/c5-half.wav build/c5-triplet.wav build/e5-triplet.wav

build/%.midi: notes/%.ly
	@mkdir -p build/
	lilypond -o build/ $^

build/%.wav: build/%.midi
	fluidsynth -F $@ SalC5Light2.sf2 $^

clean:
	rm -r build/
