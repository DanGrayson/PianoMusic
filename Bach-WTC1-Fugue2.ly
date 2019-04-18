% tell emacs: -*- coding: utf-8 -*-

\version "2.18.2"

\language "english"

\paper {
  % #(set-paper-size "letter")
  #(define top-margin 10) % default is 5 millimeters
  #(define bottom-margin 10)
  #(define left-margin 10)
  evenHeaderMarkup = \markup \fill-line
  { \on-the-fly \not-first-page
    { "Bach - Das Wohltemperierte Klavier - I - Fuga II" \fromproperty #'page:page-number-string } }
  oddHeaderMarkup = \evenHeaderMarkup
  }

fingeringUp   = { \override Fingering.direction = #UP   }
fingeringDown = { \override Fingering.direction = #DOWN }
date    = #(strftime "%Y-%m-%d" (localtime (current-time)))
up      = { \change Staff = "upper" \stemDown \slurDown \tieDown \dynamicDown \fingeringDown \phrasingSlurDown }
down    = { \change Staff = "lower" \stemUp   \slurUp   \tieUp   \dynamicUp   \fingeringUp   \phrasingSlurUp   }
idim    = \markup { \italic "dim." }
pcr     = \markup { \italic "poco cresc." }
icresc  = \markup { \italic "cresc." }
dcresc  = \markup { \italic "decresc." }
rit     = \markup { \italic "rit." }
pocorit = \markup { \italic "poco rit." }
atempo  = \markup { \italic "a tempo" }
qlegato = \markup { \italic "(quasi legato)" }
legato  = \markup { \italic "legato" }
piuf    = \markup{ \italic "più" \dynamic f }
pocof    = \markup{ \italic "poco" \dynamic f }
ppl     = \markup{ \italic "poco più lento" }

\header{
  subtitle = "Das Wohltemperierte Klavier, I. Teil"
  title = "Fuga II c-Moll a 3 voci - BWV 847"
  instrument = "Piano"
  composer = "J. S. Bach"
  arranger = \markup { { \italic "annotation" } ": S. Golescu, version " #(strftime "%Y-%m-%d" (localtime (current-time))) }
}

\score {

\new PianoStaff
<<
  \set PianoStaff.connectArpeggios = ##t
  \override Score.BarNumber.stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
  \new Staff = "upper" {
    \time 4/4
    \key c \minor
    \tempo "Allegretto moderato" 4 = 56-58
      \phrasingSlurDotted
      \relative b' {
	\clef treble
	\voiceOne \dynamicUp
				% 1
	b1\rest |
	b1\rest |
				% 3
	bf8\rest g'16-4 \mp ( fs-3 g8-4-. ) c,-1-. ef---2 g16-4 ( fs!-3 g8-4-. ) a-5-. |
	d,8-1-- g16-4( fs-3 g8-4-.) a-5-. c,16-1( d-2 ef4-3-- d16-2 c-1 | \break
				% 5
	bf8-2) ef16-5( _\p d-4 ef8-5-.) g,8-1-. af-2-- f'16-5( ef-4 f8-5-.) a,-1-. |
	bf8-2-- g'16-5( f!-4 g8-5-.) b,-.-1 c---2 d16-3( ef-4 f4-5--) ~ |
				% 7
	f8 ef16-3( \mp d-2 c-1 bf!-4 af-3 g-2 f8-1--) af'-5( g-4 f-3 |
	ef8-2--) d-.-5 _\idim ef-.-5 f-.-5 b,-.-4 c-.-5 d-.-5 b!-.-4 | \break
	\pageBreak
				% 9
	c8-.-5 g'16-5( _\p fs-4 g8-5-.) d-3-. ef8.-4 af16\rest af8\rest e8-4-. |
	f8---5 f16-5( _\pcr e-4 f8-5-.) c-3-. d8.-4 af'16\rest af8\rest d,-5-. | \break
				% 11
	ef8-4-- ef16-5( _\mp d-4 ef8-5-.) bf-3-. c-4-- ef16-4( d-3 ef8-4-.) f-.-5 |
	bf,---2 ef16-4( d-3 ef8-4-.) f-5-. af,16-2( bf-3 c4-4-- bf16-3 af-2 | \break
				% 13
	g16-1) \footnote "+" #'(-1 . 8) "+:  This long phrase is the reverse of the one in the bass in measure 9, almost."
	ef-2( f-1 _\icresc g-2 af-3 bf-4 c-1 d-2 ef-3 d-2 c-1 d-2 ef-3 f-1 g-2 a-3 |
	bf-4) f,-1( g-2 _\icresc af!-3 bf-4 c-1 d!-2 e-3 f-4 ef-3 d-2 ef-3 f-1 g-2 a-3 b-4 | \break
				% 15
	c8-5) b16-4( \mf a-3 g-2 f!-1 ef-4 d-3 c8-2) ef-5( d-5 c-4 |
	bf8-3) a-3( bf-4 c-.-5) fs,!-4-. _\idim g-4-. a!-5-. fs!-4-. | \break
				% 17
	g8-.-5 d'16-5( _\p c-4 d8-5-.) d8\rest d8\rest e16-5( d-4 e8-.-5) f8\rest |
	f8\rest fs16-5( e-4 fs8-.-5) f8\rest f8\rest g,16-4-. f-3-. g8-4-. d'8\rest | \break
				% 19
	d8\rest a16-4-. g-3-. a8-.-4 b\rest b\rest b16-4-. a-.-3 b8-.-4 b\rest |
	b8\rest c16-5( b-4 c8-5-.) g-.-1 af-2-- c16-4( b!-3 c8-.-4) d-.-5 | \break
				% 21
	g,8-4-- c16-5( b-4 c8-5-.) d-.-5 f,16-3( g-4 af4---5 g16-4 f-3 |
	ef8-2-.) c'16-5( _\p b-4 c8-5-.) g-.-3 af8.-4 d16\rest d8\rest a-.-5 | \break
				% 23
	bf8---4 bf16-5( a-4 bf8-5-.) f-.-3 g8.-4 b16\rest b8\rest g-4 ~ |
	g8 af16-3( bf-4 c-5 b-4 c-5 \footnote "+" #'( 2 . 7 ) "+  option: end the slur on this note" af-3 f2-4) ~ | \break
				% 25
	f8 d'16-5( c-4 d8-5-.) f,-.-3 ef-2-- ef'16-5( d-4 ef8-.-5) g,-3-. |
	f8-2-- f'16-5( ef-4 f8-5-.) af,-.-3 g16-2-- f'-5( -\pocof ef-3 d-2 c-1 b-4 a-3 g-2 | \break
				% 27
	c8-5) f-.-5( ef-.-5 d-.-5) d\rest af-5( g-4 f-3 |
	g-5-.) f16-4( ef-3 _\pocorit f8-4-.) d-.-2 af'---5( g-5-.) s\fermata a-4-. | \break
				% 29
	b8-.-5 ^\ppl c-.-5 f,16-5( ef-4 d-3 c-1) c8-1 c'16-5( b!-4 c8-5-.) g-.-2 |
	af!8---3 c16-4( b-3 c8-.-4) <af! b! d>-2-3-5-. g---2 c16-5( b!-4 c8-.-5) d-.-5 |
	f,16-3( g-4 af4-5-- g16-5 f^\finger "4-5" e2-4 \fermata) \bar "|." |
    }
  }
  \new Staff = "lower" {
    \set Staff.pedalSustainStyle = #'bracket
    \clef treble
    \key c \minor
    <<
    \phrasingSlurDotted
    \relative c'' {
      \showStaffSwitch
      \voiceThree \dynamicUp
				% 1
      bf8\rest \mp c16_2( b_3 c8-._2) g-._5 af--_4 c16_2( b_3 c8-._2) d-._1 |
      g,8_-_5      c16_2( b_3 c8-._2) d-._1 f,16_4( g_3 af4_2-- g16_3 f_4 | \break
				% 3
      ef16_5) c'_1 \p _\qlegato( b_2 a_3 g_1 f!_2 ef_3 d_4 c8_5_-) ef'_2( d_1 c_2 |
      bf!8_3_-) a_3( bf_2 c_1_-) fs,_4 g_2( a!_1 fs_3 | \break
				% 5
      g8_2) bf8\rest bf16\rest c,_5( d_4 ef_3 f_2 g_1 af8_2 ~ af16) d,_4( ef_3 f_2 |
      g16_1 a_3 ^\icresc bf8_2 ~ bf16) ef,_5( f_4 g_3 af_2 g_1 f_2 ef_3 d8_4) \up c'16-3( b!-2 | \break
				% 7
      c4-1) c,4\rest c8\rest f'-3_. ef_.-2 d_.-1 |
      g,8\rest
      \footnote "A" #'(-1 . -4) "A:  Here is the first four-note Alpha motif."
      af-2( g-\finger"1-2" 
			   \footnote "*" #'(-1 . -3) "* : Break the difficult slur here?"
			   f-1 g-2_.) f16-1( ef-2 
						  \footnote "*" #'(-1 . -3) "* : ditto"
						  f8-1_.) d-1_. | \break
				% 9
      g8-2_. g8\rest g8\rest b-1_. c_--2 c16-2( b!-1 c8-2_.) g-1_. |
      af8.-1 g16\rest g8\rest a-1_. bf_--2 bf16-3( a!-2 bf8_.-3) f-1_. | \break
				% 11
      g8.-1 g16\rest g8\rest g_.-1 af_--2 af-1_. g_.-1 f_.-1 |
      \down f8\rest af,-3-. bf-2-. c-1-. af\rest af16-2( g-1 af8-2-.) f-.-3 | \break
				% 13
      bf8-.-1 c-1( bf-2 af-3 bf-2-.) g-1-. f-2-. ef-3-. |
      f-.-2 df'-1( c-2 bf-3 c-2-.) af-.-1 g-.-2 f-.-3 | \break
				% 15
      g8-2-. g'16-1( \f fs-2 g8-.-1) c,-.-5 ef---3 \up g16-1( fs-2 g8-1_.) a-2_. |
      d,8_--1 g16-1( fs-2 g8-1_.) a!_.-3 c,16-2( d-1 ef4_--2 d16-1 c-2 | \break
				% 17
      bf8_.-1) c8\rest c16\rest d-1( e-2 _\pcr fs-3 g-4 a-1 bf8-2~bf16_.) e,!-1( f-2 g-1 |
      a16-2 bf-3 c8-1~c16_.) fs,-1( g-2 a!-3 bf8-4) ef,!16-2( \mp d-1 ef8-2_.) g,-1_. | \break
				% 19
      af8-1_- f'16-2( ef-1 f8-2_.) a,-1_. bf_--1 g'16-2( f-1 g8-2_.) b,-2_. |
      c16-1 \slurUp f-2( ^\f \down ef-2 d-3 c-1 bf!-2 af!-3 g-1 f8---4) \up af'-2( g-\finger"1-2" f-1 | \break
				% 21
      ef8_--2) d-1_. ef-1_. f-1_. b,-1_. _\idim c-1_. d-1_. b!-1_. |
      c8-1-. e8\rest e8\rest e-1_. f8-2_- f16-2( e!-1 f8-2_.) c_.-1 | \break
				% 23
      d8.-1 e16\rest e8\rest d_.-1 ef-2 ef16-2( d-1 ef8-2_.) bf-1_. |
      c2-1~c8 d16-2 ef-3 \footnote "*" #'(-1 . 10) "*:  Play this by pressing the F again and holding it through subsequent notes." f-4 ef-3 \footnote "*" #'(-1 . 10) "*:  ditto" f-4 d-2 | \break
				% 25
      b8-1 e\rest e\rest b-1_. c-1_- e\rest e\rest ef-1_. |
      d8_-_.-1 e\rest e\rest f-1~f e\rest e\rest f-1 | \break
				% 27
      ef-1 af!-2( g-\finger "1-2" f-1 ef-2) d-1_. ef_.-2 f-3 |
      b,8_.-1 c_.-1 \< d-2_. b!_.-1 \! b-1_-( \> c-2_.) \! e\rest c-1_. | \break
				% 29
      f16-2 _\legato d-1 ef-2
      \footnote "+" #'( 1 . -4) "+:  This starts a three note sequence in the middle voice that echoes the motif."
      c-1~c8 b-2 c4-1 e8\rest _\piuf e_.-1 |
      f4-1 e8\rest f-1 _\pocorit f-1_- ef16-1( _\dcresc d-1 ef8-1_.) <f af>_.-2-1 |
      <d b>8_--2-1 _\rit c\rest <d b>-2-1_- c\rest <c g>2-2-1 | \break
      }
    \\
    \relative c' {
      \voiceFour
      d,1\rest |
      d1\rest |
      d1\rest |
      d1\rest |
      d1\rest |
      d1\rest |
      \clef bass
				% 7
      \slurUp
      d8\rest c'16-2( ^\mf b-3 c8^.-2) g^.-5 af^--4 c16-2( b!-3 c8^.-2) d^.-1 |
      g,8^--5 c16-2( b-3 c8-2^.) d-1^. f,16-4( g-3 af4-2^- g16-3 f-4 | \break
				% 9
      ef16-5) c'-1( b-2 a-3 g-1 f-2 ef-3 d-4 c-5 d-3 ef-2 d-3 c-1 bf!-2 af!-3 g-4 |
      f-5-.) bf'-2( af-3 g-1 f-2 ef!-3 d-1 c-2 bf-3 c-2 d-1 c-2 bf-3 af!-4 g-1 f-2 | \break
				% 11
      ef16-3-.) af'-2( g-1 f-2 ef-3 df-4 c-1 bf-2 af8-3--) c'-1( bf-2 af-3 |
      \slurDown
      g8-4--) f-5( g-4 af-3 d,-5) ef-4-. f-3-. d-.-5 | \break
				% 13
      ef8-4-. af-.-3 g-.-4 f-.-5 g-.-4 ef-3( d-4 c-5 |
      d8-.-4) bf'-.-3 af-4-. g-5-. af-.-4 f-3( ef-4 d!-5 | \break
				% 15
      ef8_.-4) d\rest d4\rest d8\rest c-2( \mf bf-3 a-4) |
      \slurUp
      d8\rest ef-2( d-3 c-4 d-1-.) \slurDown c16-2( bf-3 c8-2-.) d-1-. | \break
				% 17
      \slurUp
      g,8-4^- bf'16-1( a-2 bf8-1^.) d,^.-5 ef!-4^- c'16-1( bf-2 c8-1^.) e,^.-5 |
      f8-4^- d'16-1( c-2 d8-1^.) fs,^.-4 g4^--3 d16\rest \slurDown g,-5( a-4 b-3 | \break
				% 19
      \tieUp
      c16-2 d-1 ef8-2 ~ ef16) a,-4( bf!-3 c-2 d-1 ef-2 f8-1 ~ f16) b,-5( c-4 d-3 |
      ef8-2) d\rest d\rest e-5( f) f,-2( ef-3 d-4) | \break
				% 21
      \stemUp
      d'8\rest af-2( g-3 f-4 g-3) f16-2( ef-3 f8-.-2) g-.-1 |
      \slurUp
      c16-4( d-3 ef-2 d-3 c-1 bf!-2 af-3 g-4 f-5-.) bf'-2( af!-3 g-1 f-2 ef-3 d-1 c-2 | \break
				% 23
      bf16-3 c-2 d-1 c-2 bf-3 af-4 g-1 f-2 ef-3-.) af'-2( g-1 f-2 ef-3 
								       \footnote "%" #'(-1 . -4) "%: not flat, compare with measure 11"
								       d-1 c-2 bf-3 |
      af16-4 bf-3 c-2 bf-3 af-4 g-1 f-2 ef-3 d-4-.) g'-1( f-2 ef-3 d-1 c-2 b-3 a-4 | \break
				% 25
      g8-5) g8\rest g4\rest g16\rest g16-5( a-4 ^\icresc b-3 c-2 d-1 ef-3 f-2 |
      g-1 f-4 af!-2 g-1 f-2 ef-3 d-1 c-2 b8-3) 
					       \footnote "*" #'(-1 . -4) "*: The fingering, starting here, has been heavily modified by Dan.  Samir should review it."
					       c16-2( ^\f b-3 c8_.-2) g_.-5 | \break
				% 27
      \slurDown
      af!8---4 c16-2( b-3 c8_.-2) d_.-1 g,_--5 c16-2( b!-3 c8-.-2) d-.-1 |
      f,16-4( g-3 af4---2 g16-3 f-4 ef4-5) g8\rest <ef' ef,>-.-1-5
				% 29
      \set doubleSlurs = ##t
      <d d,>8-1-5 <c c,>-1-5 <g' g,>-1-5 <g, g,>-1-5 <c c,>2-1-5( |
      <c c,>1)( |
      <c c,>1) \fermata |
      }
    \\
    {
%       \set Staff.pedalSustainStyle = #'text
%       \set Staff.pedalSustainStyle = #'mixed
 	\set Staff.pedalSustainStyle = #'bracket
			       % 1
      s1 | s1 |
			       % 3
      s1 | s1 |
			       % 5
      s1 | s1 |
			       % 7
      s1 | s1 |
			       % 9
      s1 | s1 |
			       % 11
      s1 | s1 |
			       % 13
      s1 | s1 |
			       % 15
      s1 | s1 |
			       % 17
      s1 | s1 |
			       % 19
      s1 | s1 |
			       % 21
      s1 | s1 |
			       % 23
      s1 | s1 |
			       % 25
      s1 | s1 |
			       % 27
      s1 | s2 s8 \sustainOn s8 \sustainOff s8 s16 \sustainOn s \sustainOff |
			       % 29
      s8 \sustainOn s8 \sustainOff \sustainOn 
      s8 \sustainOff \sustainOn s8 \sustainOff \sustainOn
      s4 \sustainOff
      s8 s16 \sustainOn s \sustainOff |
      s16. \sustainOn s32 \sustainOff s8
      s8 s16 \sustainOn s16 \sustainOff
      s16. \sustainOn
      s32 \sustainOff
      s16 \sustainOn
      s16 \sustainOff\sustainOn
      s16 \sustainOff\sustainOn s16 \sustainOff
      s16 \sustainOn s16 \sustainOff
      |
      s8 s4 \sustainOn s16 \sustainOff s16 s8 s8 \sustainOn s8 s8 \sustainOff
      |
    }
    >>
  }
>>
}

% \markup {
%  \wordwrap {
%   Play with loose relaxed hands and wrist with a choral quality.
%  }
% }
% \markup {
%  \wordwrap {
%   }
% }
% 
% Local Variables:
% compile-command: "make Bach-WTC1-Fugue2-letter.pdf"
% End:
