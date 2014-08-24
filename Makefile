all: logo.png

%.png: raw_%.png
	pngcrush $< $@ 2> /dev/null

raw_%.png: src/%.svg
	convert $< $@

clean:
	rm -f *.png
