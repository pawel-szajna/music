\version "2.18.2"

\include "./common.ly"

\paper {
 #(define fonts
    (make-pango-font-tree
      "Libre Baskerville"
      "Libre Baskerville"
      "Libre Baskerville"
      (/ staff-height pt 20)))
}

\header {
  title = "Sanctus"
  composer = "Paweł Szajna"
}

sopNotes = \relative c'' {

g4( f d f) g1
a4( g f a) g1
c4 bes as2
bes g
f e d1

\bar "|."

}

altNotes = \relative c' {
}

tenNotes = \relative c {
}

basNotes = \relative c {
}

lyricsA = \lyricmode {
  San -- ctus, san -- ctus
  Do -- mi -- nus De -- us sa -- bba -- oth
}
lyricsB = \lyricmode {
  Ky -- ri -- e,
  ky -- ri -- e e -- le -- i -- son,
}

\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
        \set Staff.instrumentName = "Sopran"
        \time 4/4
        %\transpose g bes {
        \key g \dorian 
        \sopNotes } %}
        \new Lyrics \lyricsto "Sop" \lyricsA
      \new Voice = Alt {
        \set Staff.instrumentName = "Alt"
        %\transpose g bes {
        \key g \dorian
        \altNotes } %}
        \new Lyrics \lyricsto "Alt" \lyricsA
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenor"
        %\transpose g bes {
        \clef "treble_8"
        \key g \dorian
        \tenNotes } %}
        \new Lyrics \lyricsto "Ten" \lyricsA
      \new Voice = Bas {
        \set Staff.instrumentName = "Bas"
        \clef bass
        %\transpose g bes {
        \key g \dorian
        \basNotes } %}
        \new Lyrics \lyricsto "Bas" \lyricsA
    >>
  >>

  \layout { }

}
