\version "2.18.2"

\language "english"

\paper {
  % #(set-paper-size "letter")
  evenHeaderMarkup = \markup \fill-line { "Shostakovich: Prelude in E minor" }
  }

\header{
  title = "Prelude in E minor"
  instrument = "Piano"
  composer = "Dmitri Shostakovich"
  opus = "Opus 87 Number 4"
}

\layout {
  \context {
    % \Voice
    % \consists "Rhythmic_column_engraver" 
    % \consists "Ambitus_engraver"
  }
}

\new PianoStaff
<<
  \new Staff {
    \key e \minor
    \clef "treble"
    \tempo "Andante" 4 = 100
    <<
    \relative e'' {
      \voiceOne
      r4 \p g2-5( ^\mf ^\decr e4-4) \! |
      r fs2-5( ^\mp ^\decr d4-3) \! |
      r e-4 ^\p ^\cr \( d \finger "3-4" c \finger "3-4" \! |
      b2-- ^\mp \finger "3-4" ~ b8 a8-3 g-2 a-3 | \break
      b4.-4 c8-3 d-4 e-5 b-3 c-4 \) |
      d4.-5 c8-4 b-3 c-4 d-5 b-3 |
      c4.---5( ^\decr b8-4) \! c4.---5( ^\decr a8-4) \! |
      b4.-5( ^\cr g8-4 fs-3 g-4 a-5 as-4) ^\! | \break
      r4 b2---5( g4-3) |
      r4 a2---5( fs4-3) |
      g4.-5\( e8-3~ e fs-4 g-5 a-4 |
      b-5 fs-1 b-3 c-4 d-5 g,-1 d'-4 e-5 \) | \break
      r4 fs2-5( d4-4) |
      r4 e2-5( c4-3) |
      r4 d-4( c \finger "3-4" b \finger "3-4" ) |
      b4.-3\( c8-4 d-5 c-4 b-3 c-5 | \break
      a4.-4 b8-5 gs-3 a-4 b-5 a-4 |
      g!-3 a-5 g-4 a-5\) fs4.-4( g8-5) |
      e4.-4( fs8-5) d4.-4( e8-5) \clef "bass" |
      cs8-4( d-5 b-3 d-5) cs-4( d-5 b-4 cs-5) | \break
      bf4.-3( c!8-4 d-5 bf-2 c-3 d-4 ) | ef4.-5( d8-4) f!4-5 ~ f8-4 ( g8-5 ) | r4 \clef "treble" af2-5( f!4-4) | r4 g2-5( e4-3) | \break
      r4 f2-5( e4-4) \clef "bass" | r4 ef2---5 ^\decr ( d4-4) ^\! | r4 ef2---5 ^\decr ( d4-4) \! | c4 \finger "3-4" \( b \finger "3-4" ~ b8 c-5 a-3 b-4 \) | \break
      c4.-5( b8-4) c4.-5 \( b8-4 ~ | b \) \clef "treble" e-2 _\mf _\decr \( [ fs-3 g-1 ] \stemDown a-2 b-3 c-1 d-2 \! | <ef-3 c-1>2 \) <ef c>4 <ef c> | \stemUp ef4.-3 \( af8-5 ef4.-3 af8-5 | \break
      ef2.-3\) <ef-4 c-2>4~ | \stemDown <ef c> <d!-3 b-1>2 <c-4 a-2>4~ | <c a> <c-4 a-2>-- <c-4 a-2>-- \stemUp <b-3 g-1>--~ | <b g> <a-5 f-4 d-2 c-1>-- <a-5 f-4 d-2 c-1>-- <g b,>-1-5 ~ \( | <g b,>2 <fs a,>4-1-4 <g af,>-1-5  \) | \break
      r4 \clef "bass" <e g>2-4-5( <c e>4-2-4) | r4 <bf df>2-4-5( <c a!>4-3-5 ) | r4 <e g>2-4-5( <c e>4-2-4) | r4 <bf df>2-4-5( <a! c>4-3-5) | \break
      r4 c2-5( b!4-4 ) | r4 c2-5( b4-4) | c4.-5 \( b8-4 c4.-5 b8-4 | c1-5 | b1-4 \) |  \break
    }
    \\
    \relative c' {
      \voiceTwo
      e8---1( b'-4) b-1-.( b-1-.) c---2( b-1) b-1-.( b-1-.) |
	  d,---1( b'-4) b-1-.( b-1-.) c---2( b-1) b-1-.( b-1-.) |
	  c,---1( b'-5) b-1-.( b-1-.) c-2( b-1) b-2( a-1) |
	  a-2 g-1 g-2 fs-1 fs2-1\(~ |
	  \break
      fs8 g-2 a2-1 \cr g4-2 |
	  fs8-1 \! g-2 a2-1 \decr g4-2 \! \) |
	  fs8---1( g-2) g-2-.( g-2-.) d---1( fs-2) fs-2-.( fs-2-.) |
	  d8---1( e-2) e-2-.( e-2-.) c4-1( d-2) |
	  \break
      b8-1--( \p _\markup {\halign #-1.5 \italic subito}   g'-3) g-.-3( g-.) fs---2( e-1) e-.-1( e-.-1) |
	  b8-1--( fs'-3) fs-.-3( fs-.) e---2( d-1) d-.-1( d-.-1) |
	  d---3( \decr c-2) c4-2\( b4-1~ \cr b8\) r8 \! |
	  r8 fs'~ fs4 r8 \decr g~ g4 | \break
      d8---1( \! a'-4) a-.-1( a-.-1) b---2( a-1) a-.-1( a-.-1) |
	  c,8---1( a'-4) a-.-1( a-.-1) b---2( a-1) a-.-1( a-.-1) |
	  b,8---1( a'-5) a-.-1( a-.-1) b---2( a-1) a-2( g-1) |
	  g8-2( fs-1) fs2.-1 \cr | \break
      f8-2( \! c-1) c2.-1~ \decr |
	  c2 \! _\markup { \italic "cresc." } cs8-2\( fs,-1 cs'4-2~ |
	  cs8 fs,-1 cs'4-2~ cs8 fs,-1 b4-2 \) |
	  fs2-2\( _\markup { \italic poco \dynamic f } f4.-1 ~ f8-2 ~ | 
      \break
      f8 d-1 f8-2 ~ f8-1 ~ f8 \) bf8~bf4 | c8-3( _\markup {\italic "dim."} f,-1) bf4-2 ~ bf8 f8-1 bf4-2 ~ | bf8 \pp c-1( \clef "treble" df-.-2 df-.-2) c-1( df-2 bf-1 c-2) | df-2--( c-1) c-1-.( c-1-.) df-2--(  c-1) c-1-.( c-1-.) | \break
      a8-1--( c-2) c-1-.( c-1-.) df-2--( c-1) c-2-.( c-2-.) | g-1--( _\cr b-2) b-1-.( b-1-.) c-2--( b-1) b-2-.( b-2-.) | fs-1--( b-2) b-1-.( b-1-.) c-2--( b-1) \! _\markup { \italic poco \dynamic f } b-2-.( b-2-.) | b-2( _\markup{\italic "dim."} a-1) a-2( g-1) g2-1 \( ~ | \break
      g8 \mp \decr fs-2 g4-1~g8 fs-2 g4-1~ | g8 \) \! \p s8 s4 s2| s \pp s4 s | df''8-2 \( c-1 bf-2 c-1 df-2 c-1 bf-2 c-1 | \break
      df-2 c-1 df-2 c-1~c4 \) \dynamicUp s4 \mp \cr | s4 s2 s4 | s s \! \f \dynamicDown s s | s4 s s <d, f>---4-2 | <d f>-4-2 _\markup "rit." _\decr <c e>2.-3-2 | \break
      r8 \! \clef "bass" g-1-.( \mp g-1-. g-1-.) af-1( g-1) g-1-.( g-1-.) | fs-2\( ( _\markup { \italic "dim." } g-2) e-1 fs-2 g-2 e-1 fs-2 g-1 \) | r g-1-.( \p g-1-. g-1-.) af-1( g-1) g-1-.( g-1-.) | fs-2\(( g-2) e-1 fs-2 g-2 e-1 fs-2 g-1 \) | \break
      af-2( \pp g-1) g-1-.( g-1-.) fs-2( g-1) g-1-.( g-1-.) |af-2( g-1) g-1-.( g-1-.) fs-2( g-1) g-1-.( g-1-.) | af-2 \ppp \( g-1 fs-2 g-1 af-2 g-1 fs-2 g-1 | af4-2 g-1 fs-2 g-1~ | g1 \) | \break
    }
    >>
  }
  \new Staff \relative e, {
    \key e \minor
    \clef "bass"
    <<
    \relative e, {
      \voiceThree
      e1 | fs | g  | c | \break
      b ~ | b | e,  | g | \break
      fs | c'2 b2 | e,1 ~ | e | \break
      d | e | fs | a~ | \break
      a~ | a2 a | g1 | d2 g2 | \break
      d1~ | d | df | e! | \break
      a1~ | a | g~ | g2 c4 b | \break
      e,1~ | e8 d'8\rest d4\rest d2\rest | s1 | f'!8-1 \( ef-2 df-3 ef-2 f-1 ef-2 df-3 ef-2 | \break
      f!8-1 ef-2 f-1 ef-2~ef \) ef-2 \( \dynamicDown f-1  \mp \cr fs-2 | g-1 fs-2 g-1 fs-2~fs f!-1 gf-2 f-1( | \stemDown <f c>4) \) <f! c>---4-1 \mf \dynamicUp <f c>---4-1  << { \stemDown <d-- g,>-2-1~ | \stemUp <d g,> } \\ { s4 | \tieUp b,1~ \finger "5-1" | b } >>  | \break
      e,1 | g | e | g | \break
      e1~ | e | e~ | e~ | e | \break
      }
    \\
    \relative e,, {
      \voiceFour
      e1-5 _\markup "legato" | fs \finger "4-5" | g \finger "4-5"  | c -4  | \break
      b -5 ~ | b \finger "5------3" | e,-5  | g-4  | \break
      fs \finger "1------2" -5 | c'2 \finger "5-4" b2 \finger "5------3" | e,1 \finger "5-4" ~ | e | \break
      d-5 | e \finger "4-5" | fs \finger "4-5" | a-4 ~ | \break
      a~ | a2 a-4 | g1 \finger "5------3" | d2-5 g2 \finger "3" | \break
      d1-5~ | d | df \finger "4-5" | e! \finger "4-5" | \break
      a1~ \finger "3" | a | g-5 ~ | g2 c4-4 \( b \finger "5-3" | \break
      e,1-5 ~ | e8 \) s8 s4 s2 | <af'' ef'>2-2-5 <af ef'>4-2-5 <af ef'>-2-5 | af2-5 af-5 | \break
      af2.-5 a4-5~ | a b2 \finger "4-5" c4-4( | s4) s s s | s2 b,,---5 ( | b1 \finger "5------3" )  | \break
      e,1-5 | g-4 | e-5 | g-4 | \break
      \slurDown e1-5( | e) | e-5( | e)( ^\markup { \italic "morendo" } | e) | \break
      }
    >>
  }
>>
