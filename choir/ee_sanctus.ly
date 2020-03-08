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
}

sopNotes = \relative c'' {
  
  % Sanctus
  g4( f d f)
  g1
  a4( g f a)
  g1
  
  % Dominus
  c4 bes as2
  bes g
  f e
  d1
  
  % Pleni
  f2 e4 f
  g2 e4 f
  g1
  a
  
  % Gloria
  bes2( d4 c)
  bes2 c4( d)
  c1
  c
  
  % Hosanna
  c2 bes4 as
  bes2 g
  f( e)
  d1
  
  % Benedictus
  d2 f4( e)
  f2 g
  f a4( g)
  a1
  
  bes2( a4 g)
  f2 d
  g a4 bes
  c1
  
  % Hosanna
  c2 bes4 as
  bes2 g
  bes( a)
  g1
  
  \bar "|."

}

altNotes = \relative c' {
  
  % Sanctus
  d2( c4 d)
  d1
  f4( d c f)
  f2( e)
  
  % Dominus
  as4 as g2
  g f
  d c
  a1
  
  % Pleni
  d2 d4 d
  d2 c4 d
  e1
  f
  
  % Gloria
  g1
  g4( a) bes2
  g1
  g
  
  % Hosanna
  as2 g4 g
  g2 f
  d( c)
  a1
  
  % Benedictus
  bes2 bes
  d d
  d e
  g( f)
  
  d1
  d2 d
  d f4 g
  g1
  
  % Hosanna
  as2 g4 g
  g2 f
  f1
  d
}

tenNotes = \relative c' {
  
  % Sanctus
  bes2( a)
  bes1
  c4( bes a c)
  c1
  
  % Dominus
  es4 es es2
  es es
  bes g
  g( f)
  
  % Pleni
  a2 g4 a
  bes2 bes4 a
  g2( bes)
  c1
  
  % Gloria
  es1
  f2 f
  f1
  e
  
  % Hosanna
  es2 es4 es
  es2 es
  bes2( g)
  g( f)
  
  % Benedictus
  f2 bes
  a bes
  bes c
  c1
  
  bes2( c4 bes)
  c2 c
  bes d4 d
  e1
  
  % Hosanna
  es2 es4 es
  es2 es
  d1
  bes
}

basNotes = \relative c' {
  
  % Sanctus
  g2( d)
  g1
  d2( f)
  c1
  
  % Dominus
  as4 as c2
  es g,
  bes c
  d1
  
  % Pleni
  d2 d4 d
  g,2 g4 a
  c1
  f
  
  % Gloria
  es2( g,)
  bes bes
  c1
  c
  
  % Hosanna
  as2 c4 c
  es2 g,
  bes( c)
  d1
  
  % Benedictus
  bes2 bes4( c)
  d2 d
  d c
  f1
  g2( d)
  f f
  g d4 d
  c1
  
  % Hosanna
  as2 c4 c
  es2 es
  bes( d)
  g1
}

lyricsA = \lyricmode {
  San -- ctus, san -- ctus
  Do -- mi -- nus De -- us sab -- ba -- oth.
  Ple -- ni sunt cæ -- li et ter -- ra glo -- ri -- a tu -- a.
  Ho -- san -- na in ex -- cel -- sis.
  Be -- ne -- dic -- tus qui ve -- nit in no -- mi -- ne Do -- mi -- ni.
  Ho -- san -- na in ex -- cel -- sis.
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
