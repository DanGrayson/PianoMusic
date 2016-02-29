%.pdf : %.ly
	lilypond "$*.ly"

all : SchubertF-D935-2-Impromptu.pdf \
	Shostakovich-Piano-Prelude-in-E-minor-opus-87-no-4.pdf

