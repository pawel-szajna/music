\version "2.18.2"

\include "common.ly"

soloNotesR = \relative c' {

  f8^\markup { \large\bold Refren }( g) a c bes( a) g4 \bar "!"
  f8 e d bes' a( g) f4 \bar "||"

}

soloNotesZ = \relative c'' {
  \cadenzaOn
  a8 bes c\breve bes8 c d4 c2 \bar "!"
  f8 e c\breve c8 c c4 g2 \bar "!"
  f8( g) a c bes a a\breve a4 g2 \bar "!"
  f\breve f8( e) d <<c \parenthesize c'>> <<bes,4 \parenthesize bes'>> <<a,2 \parenthesize a'>> \bar "|"
  \cadenzaOff 
}

organRHNotes = \relative c'' {
  <<{a8 <<bes g>> <<c\breve a>> bes8 c d4 c2 << {f8 e c\breve~c1} \\ {a4 a\breve a2 g} >>} \\ {f4~f\breve~f1~f4~f\breve~f2 e}>>
  <<{f8 g a c bes a a\breve} \\ {<<f2. d>> <<d\breve f>>}>> <<{a4 g2} \\ {<<e2. c>>}>>
  <<{<<f\breve d>> f8 e d c bes4 a2} \\ {bes\breve~bes2 f2.}>>
}

organLHNotes = \relative c {
  s4 <<{c'\breve d8 c bes4 a2} \\ {f\breve~f1}>>
  <<{d'4~d\breve c1} \\ {d,4~d\breve f4 c2.}>>
  <<{a'2.~a\breve~a4 g2} \\ {d2 bes4~bes\breve c2.}>>
  <<{f\breve~f2 d4 c2} \\ {bes\breve~bes2 f2.}>>
}

lyrr = \lyricmode {
  Pan Bóg jest wier -- ny we wszyst -- kich swych sło -- wach
}
lyrz = \lyricmode {
  \override LyricText.self-alignment-X = #LEFT
  Pan jest wierny_we_wszystkich swo -- ich sło -- wach
  i we wszystkich_dziełach swo -- ich świę -- tych.
  Pan pod -- trzy -- mu -- je wszystkich,_którzy_upa -- da -- ją,
  i_podnosi wszy -- stkich zgnę -- bio -- nych.
}

\header {
  title = "Psalm"
  subtitle = "Missa Faustinum"
  composer = "Paweł Szajna"
}

\score {
  <<
  \new Voice = Lud {
    \set Staff.instrumentName = "Solista, wierni"
    \key f \major
    \soloNotesR
    
  }
  \new Lyrics \lyricsto "Lud" \lyrr
  >>
}

\score {
  <<
    
    \new Voice = Solista {
      \set Staff.instrumentName = "Solista"
      \key f \major
      \soloNotesZ
    }
    \new Lyrics \lyricsto "Solista" \lyrz

    \new PianoStaff <<
      \new Staff { \key f \major \organRHNotes }
      \new Staff { \clef bass \key f \major \organLHNotes }
    >>

  >>

  \layout { }
  %\midi { }

}