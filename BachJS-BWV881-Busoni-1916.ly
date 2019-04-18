\version "2.18.2"

\language "english"

\paper {
  evenHeaderMarkup = \markup \fill-line { "" }
  }

\header{
  title = "Praeludium XII"
  instrument = "Piano"
  composer = "J. S. Bach"
  opus = "BWV 881"
  mutopiacomposer = "BachJS"
  source = "Ferruccio Busoni, Breitkopf & Härtel, 1915"
  license = "public domain"
  maintainer = "Daniel R. Grayson"
  maintainerEmail = "danielrichardgrayson@gmail.com"
  maintainerWeb = "http://dangrayson.com"
}


\new PianoStaff
<<
  \new Staff {
    \key f \minor
    \time 2/4
    \clef "treble"
    <<
    \relative f' {
      \voiceOne \partial 4 \slurDown
      b8\rest
      _\markup { \italic "un poco espressivo, mezza voce" }
      <af f>_.( | <af f> <g e>) b8\rest <g bf>_.( | <bf g> <af f>) b8\rest
    }
    \\
    \relative c' {
      \voiceTwo
    }
    >>
  }
  \new Staff \relative e, {
    \key f \minor
    \clef "bass"
    <<
    \relative f {
      \voiceThree
      f4 |
      }
    \\
    \relative e,, {
      \voiceFour
      }
    >>
  }
>>
