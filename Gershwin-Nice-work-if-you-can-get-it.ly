\version "2.18.2"

\language "english"

\paper {
  % #(set-paper-size "letter")
  evenHeaderMarkup = \markup \fill-line { "Gershwin: Nice work if you can get it" }
  }

\header{
  title = "Nice work if you can get it"
  subtitle = "from A Damsel in Distress"
  instrument = "Piano"
  composer = "George Gershwin and Ira Gershwin"
}


\new PianoStaff
<<
  \set PianoStaff.connectArpeggios = ##t
  \new Staff = "upper" {
    \time 2/2
    \key g \major
    \clef "treble"
    \tempo "Moderately slow"
    <<
    \new Voice = "melody" {
    \relative b' {
      \voiceOne
      b4-124 c-5 d-125\arpeggio \tuplet 3/2 { c16-3 d-4 c-3 } bf8-2 | a4-124 b-5 d-125\arpeggio bf8-3 af-2 | g-1 fs-2 g-1 a!-2 \tuplet 3/2 { bf4-3 ef-5 df-4 } | d!2-125 b!4-4 a-3 \bar "||" \break
      b-124 c-5 c-125 b-4 | a-124 b2.-5 | g4-124 a-5 a-125 g-4 | \break
      fs1-125 | d4.-24 e8-125( e8.) d16-1 e8.-2 g16-3 | a8-124 b4.-5 r8. d,16-1 e8.-2 g16-3 | \break
      a8-4 b4.-5 g4-125 g8-125 g8-15( | g2.) r4 | b-124 c-5 c-125 b-4 | \break
      a4-124 b2.-5 | g4-124 a-5 \tuplet 3/2 { a-125 gs-5 g-5 } | fs1-125 | \break
      d4.-24 e8-125( e8.) d16-1 e8.-2 g16-3 | a8-124 b4.-5 r8. d,16-1 e8.-2 g16-3 | a8-4 b4.-5 g4-125 g8-125 g8-15( | \break
      g1) | r8 b4-235 g8-123 b4-235 g-123 | bf4.-125 g8-1235( g2) | \break
      b!8.-5 b16-5 b,!8.-1 b16-2 e8-4 g4.-5 | fs1-125 | r8 a4-235 f8-123 a4-235 f-123 | \break
      a4.-145 a8-125( a4) a8.-1 b16-2 | d4-4 d-4 d8.-4 e16-5 b4-2 | as1-124 | \break
      b4-124 c-5 c-125 b-4 | a-124 b2.-5 | \break g4-124 a-5 \tuplet 3/2 { a-125 gs-5 g-5 } | 
      fs1-125 |  \break d4.-24 e8-125( e8.) d16-1 e8.-2 g16-3 | a8-124 b4.-5 r8. d,16-1 e8.-2 g16-3 |
      a8-4 b4.-5( b2) | \break d4-1235 b-1235 g-1235 e-123 | g-125 a-124 c!-125 bf-125 | a2-125 <g' g'>4^15 r \bar "|." \break      
    } }
    \\
    \relative c' {
      \voiceTwo
      < d fs >2 < d f >\arpeggio | <c e> <c ef>\arpeggio | s s | <g' a> s |
      <ds g> <d fs> | <cs f> <c e>^12 | <b ef> <bf d> |
      <b! cs>4 <b cs> <bf cs>2^12 | b!4. <b g>8( <b g>4) g\rest | <c e>2 b\rest |
      s4 s <bf df> <a c>8 b( | b4.) b8-1 d!8.-2 e16-1 g8.-2 a16-3 | <g ds>2 <d fs> |
      <cs f> <c e>^12 | <b ef> <bf d> | <b cs>4 <b cs>^12 <bf cs>2^12 |
      b!4. <b g>8( <b g>4) g\rest | <c e>2 s2 | s4 s4 <bf df> <a c>8 b( |
      b1) | s8 <e g>4 <e b>8 <e g>4 <e b> | <d f>4. <bf d e>8( <bf d e>2) |
      e4\rest r4 g,2 | <b cs>4 <b cs>-12 r <b cs>-12 | s8 <d f>4 <d a>8 <d f>4 <d a> |
      <d g>4. <cs es>8( <cs es>4) s4 | s1 | <e fs>1 |
      <ds g>2 <d fs> | <cs f> <c e>-12 | <b ef> <bf d> |
      <b cs>4 <b cs>-12 <bf cs>2-12 | b!4. <b g>8( <b g>4) g\rest | <c e>2 s2 |
      ef2-1 d-1 | <e! g b>4 <c e g> <a c e> <bf c> | <b! d> <cs f> <df g> <c fs> | <b! e>2 s |
    }
    >>
  }
  \new Lyrics \with { alignBelowContext = "upper" } {
    \lyricsto "melody" {
      " "  " "  " "  " "  " "  " "  " "
      " "  " "  " "  " "  " "
      " "  " "  " "  " "  " "  " "  " "
      " "  " "  " "
      Hold -- ing hands at mid -- night 'neath a star -- ry
      sky, nice work __ if you can get it, and you can
      get it if you try. __ Stroll -- ing with the
      one girl, sigh -- ing sigh af -- ter sigh,
      nice work __ if you can get it, and you can get it if you try.
      __  Just i -- mag -- ine some -- one __
      wait -- ing at the cot -- tage door,  where two hearts be --
      come one, __   Who could ask for an -- y -- thing more?
      Lov -- ing one who loves you and then tak -- ing that
      vow, nice work __ if you can get it, and you can
      get it. __ Won't you tell me how?
      } }
  \new Staff \relative e, {
    \set Staff.pedalSustainStyle = #'bracket
    \key g \major
    \clef "bass"
    <<
    \relative e {
      \voiceThree
      s1 | s1 | r8 d_2 b'4_1 df2 | s1 |
      a2 af | g fs4_1 s | f2 e |
      g g4 e | a-1 fs-2 e-1 s | g-1 e-2 a-1 fs-2 |
      g2-1 s | s s | a-1 af-1 |
      g2-1 fs!4-1 s4 | f!2-1 e-2 | g-1 g4-1 e-2 |
      a4-1 fs-2 e-1 s | g-1 e-2 a-1 fs-2 | g2-1 s |
      s1 | s1 | s1 |
      s1 | g1-1 | s4 s4 d2-1 |
      s1 | s1 | s1 |
      a'!2-1 af-1 | g-1 fs!4-1 s | f2-1 e-2 |
      g2-1 g4-1 e-2 | a-1 fs-2 e-1 b-4 | g'-1 e-2 a-1 fs-2 |
      <f a>2-12 <e! gs>-12 | s1 | s1 |
      }
    \\
    \relative e {
      \voiceFour
      <b a'>4-51\sustainOn fs'-2 <bf, af'>-51\arpeggio\sustainOff\sustainOn f'\rest | <g a,>4-51\sustainOff\sustainOn e-2 <gf af,>2-51\arpeggio\sustainOff\sustainOn | g,2-5\sustainOff\sustainOn <ef' g bf>-5321\sustainOff\sustainOn | <e! g a c>2-5321\sustainOff\sustainOn d!4-3\sustainOff\sustainOn c-4\sustainOff\sustainOn |
      b2-51\sustainOff\sustainOn bf-51\sustainOff\sustainOn | a-51\sustainOff\sustainOn s4\sustainOff\sustainOn d,-5 | g2-51\sustainOff\sustainOn c-32\sustainOff\sustainOn |
      a2-51\sustainOff\sustainOn bf4-41\sustainOff\sustainOn e-2 | b!2-4\sustainOff\sustainOn s4\sustainOff\sustainOn b-4 | a2-5\sustainOff\sustainOn b-5\sustainOff\sustainOn |
      c4-4\sustainOff\sustainOn b-5 e-2\sustainOff\sustainOn d!-3\sustainOff | g,-5\sustainOn d'-2 g,-5\sustainOff\sustainOn d'-2 | b2-5\sustainOff\sustainOn bf-5\sustainOff\sustainOn |
      a2-5\sustainOff\sustainOn s4\sustainOff\sustainOn d,-5 | g2-5\sustainOff\sustainOn c-3\sustainOff\sustainOn | a-5\sustainOff\sustainOn bf4-4\sustainOff\sustainOn e |\break
      b!2-5\sustainOff\sustainOn s4\sustainOff\sustainOn b-4 | a2-5\sustainOff\sustainOn b-5\sustainOff\sustainOn | c4-4\sustainOff\sustainOn b-5 e-2\sustainOff\sustainOn d!-3 |
      g,8-5\sustainOff\sustainOn d'4-2 fs8-1 e8.^.-2 d16-1 b8.-2 g16-3 | e4-5\sustainOff\sustainOn b'-1 e,-5 \sustainOff\sustainOn b'-1 | g-2 \sustainOff\sustainOn f-3 c-5 \sustainOff\sustainOn d-4 |
      e-3 \sustainOff\sustainOn b'-2 d-1 \sustainOff\sustainOn e,-5 | a-3\sustainOff\sustainOn r a-3 \sustainOff\sustainOn r | d,2-5 \sustainOff\sustainOn f-4\sustainOff\sustainOn |
      <e' b'>4.-21\sustainOff\sustainOn <g a,>8-51( <g a,>4) a8.-5\sustainOff b16-4 | d4-2 d-2 d8.-2 e!16-1 b4-4 | c,-5 c'8.-2 d16-1 c8.-2 as16-3 fs4-5 |
      b,2-5\sustainOn bf-5\sustainOff\sustainOn | a-5\sustainOff\sustainOn s4\sustainOff\sustainOn d,-5 | g2-5\sustainOff\sustainOn c-3\sustainOff\sustainOn |
      a2-5\sustainOff\sustainOn bf4-4\sustainOff\sustainOn e | b!2-5\sustainOff\sustainOn s\sustainOff\sustainOn | a-5\sustainOff\sustainOn b-5\sustainOff\sustainOn |
      r4\sustainOff\sustainOn b-5 r\sustainOff\sustainOn e,-5 | a-2\sustainOff\sustainOn r d,-5\sustainOff\sustainOn d'-1\sustainOff\sustainOn | <d g,>-51\sustainOff\sustainOn g8.-1\sustainOff\sustainOn f16-2 ef4-3\sustainOff\sustainOn d!-1\sustainOff\sustainOn | <d g,>2-51\sustainOff <g, g,>4-51 r |
      }
    >>
  }
>>
