all: logo.png

%.png: src/%.svg
	convert $< $@

clean:
	rm -f *.png
