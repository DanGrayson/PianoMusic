%-letter.pdf : %.ly
	lilypond -dno-point-and-click -dpaper-size='"letter"' -o "$*-letter" "$*.ly"

%-a4.pdf : %.ly
	lilypond -dno-point-and-click -dpaper-size='"a4"' -o "$*-a4" "$*.ly"

all : \
	Bach-WTC1-Fugue2-letter.pdf \
	Gershwin-Nice-work-if-you-can-get-it-letter.pdf \
	SchubertF-D935-2-Impromptu-letter.pdf \
	SchubertF-D935-2-Impromptu-a4.pdf \
	Shostakovich-Piano-Prelude-in-E-minor-opus-87-no-4-letter.pdf \
	Shostakovich-Piano-Prelude-in-E-minor-opus-87-no-4-a4.pdf \
	BachJS-BWV881-Busoni-1916-letter.pdf \
	BachJS-BWV881-Busoni-1916-a4.pdf

clean:; rm -f *~ *.midi *.pdf
