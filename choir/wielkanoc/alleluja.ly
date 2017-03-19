\version "2.18.2"

\include "../common.ly"
%{
\paper {
  paper-height = 15\cm
  paper-width = 50\cm %6.875\in %8.26
  line-width = 45\cm
}
%}
\header {
  title = "Alleluja"
  composer = "Paweł Szajna (2017)"
}

sopNotes = \relative c'' {
 d2. c4.~c4 bes8 g4 g8 c4 bes8 a2.
 d2. c4.~c4 bes8 a4 a8 g4 g8 f2.
 \bar "|."
}

altNotes = \relative c'' {
 bes2. bes4.( a4) f8 f4 e8 e( f) g f4 g8 f4 f8 
 bes2. bes4.( a4) f8 g8( f) f e( f) e c2.
}

tenNotes = \relative c' {
 f2. f4.~f4 d8 c4 c8 c4 c8 c4 cis8 d4 es8 
 f2. f4.~f4 d8 c4 d8 e( d) c a2.
}

basNotes = \relative c {
 bes4.( bes16) d f8 bes f4. f16 a c8 f, c'4.( c,8) d e f4 e8 d4 c8
 bes4.( bes16) d f8 bes f4. f16 a c8 f, f4 d8 e4 e8 f2.
}

lyricsS = \lyricmode {
 Al -- le -- lu -- ja al -- le -- lu -- ja
 al -- le -- lu -- ja al -- le -- lu -- ja.
}

lyricsA = \lyricmode {
 Al -- le -- lu -- ja al -- le -- lu al -- le -- lu -- ja
 al -- le -- lu -- ja al -- le -- lu -- ja.
}

lyricsT = \lyricmode {
 Al -- le -- lu -- ja al -- le -- lu al -- le -- lu -- ja
 al -- le -- lu -- ja al -- le -- lu -- ja.
}

lyricsB = \lyricmode {
 Al -- le -- lu -- ja le al -- le -- lu -- ja al -- le -- lu al -- le -- lu -- ja
 Al -- le -- lu -- ja le al -- le -- lu -- ja ja al -- le -- lu -- ja.
}


\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
        \set Staff.instrumentName = "Sopran"
        \tempo "Allegro"
        \time 6/8
        \key f \major
        \sopNotes }
        \new Lyrics \lyricsto "Sop" \lyricsS
      \new Voice = Alt {
        \set Staff.instrumentName = "Alt"
        \key f \major
        \altNotes }
        \new Lyrics \lyricsto "Alt" \lyricsA
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenor"
        \clef "treble_8"
        \key f \major
        \tenNotes }
        \new Lyrics \lyricsto "Ten" \lyricsT
      \new Voice = Bas {
        \set Staff.instrumentName = "Bas"
        \clef bass
        \key f \major
        \basNotes }
        \new Lyrics \lyricsto "Bas" \lyricsB
    >>
  >>

  \layout { }
  %\midi { }

}