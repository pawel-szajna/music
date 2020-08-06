\version "2.18.2"

\include "../common.ly"

#(set-global-staff-size 13)

\header {
  title = "Alleluja"
}

sopNotes = \relative c' {

\partial 4
\key as \major

es4 %{ as4. bes8 bes4.
des8 des4. c8 c2

as bes8 as g f
f4. es8 es4. \breathe

    es8 as4. bes8 bes4.
    des8 des4. c8 c4.
    
    bes8 as4. as8 bes8( as)
    g( f) f4. g8 e4. \breathe
    
g8 %} as4. bes8 bes4.
des8 des4. c8 c2

as bes8 as g

f f4. es8 es4. \breathe

    es8 as4. bes8 bes4.
    des8 des4. c8 c4.
    
    bes8 as4. as8 bes( as)
    bes( des) f4. e8 e4. \breathe

b8 \key c \major \bar "||" c4. d8 d4.
f8 f4. e8 e2

c d8 c b
a a4. g8 g4. \breathe

    g8 c4. d8 d4.
    f8 f4. e8 e4.
    
    b8 c4. c8 d
    c b g a2. \fermata \bar "|."

}

altNotes = \relative c' {

\key as \major

es4 %{ c4. es8 es4.
f8 f4. as8 as2

as des,8 des des
des des4. c8 c4. \breathe

    c8 f4. es8 es4.
    f8 f4. as8 as4.
    
    f8 f4. f8 es4
    es8( des) c4. c8 c4. \breathe

des8 %} c4. es8 es4.
f8 f4. as8 as2

as des,8 des des des
des4. c8 c4. \breathe

    c8 f4. es8 es4.
    f8 f4. as8 as4.
    
    f8 f4. f8 es4
    f f4. g8 g4. \breathe
    
g8 \key c \major e4. g8 g4.
a8 a4. g8 g2

a2 a8 a a
g f4. e8 e4. \breathe

    e8 e4. g8 g4.
    a8 a4. a8 a4.
    
    a8 a4. a8 g
    g e e e2. \fermata

}

tenNotes = \relative c {

\key as \major

es4 %{ es4. g8 g4.
as8 as4. as8 as2

c bes8 bes bes
as as4. as8 as4. \breathe

    as8 c4. bes8 bes4.
    bes8 bes4. f8 f4.
    
    f8 as4. as8 g4
    bes as4. g8 g4. \breathe
    
g8 %} es4. g8 g4.
as8 as4. as8 as2

c bes8 bes bes
as as4. as8 as4. \breathe

    as8 c4. bes8 bes4.
    bes8 bes4. f8 f4.
    
    f8 as4. as8 g4
    bes c4. c8 c4. \breathe
    
b8 \key c \major a4. b8 b4.
c8 c4. c8 c2

c4.( b8) a a a
c c4. c8 c4. \breathe

    c8 a4. b8 b4.
    d8 d4. c8 c4.
    
    a8 c4. c8 b
    b d d a2. \fermata

}

basNotes = \relative c {

\key as \major

es4 %{ as,4. es'8 es4.
des8 des4. as8 as2

f bes8 bes bes
c des4. as8 as4. \breathe

    g8 f4. g8 g4.
    bes8 bes4. f'8 f4.
    
    des8 des4. bes8 es4
    es f4. c8 c4. \breathe
    
bes8 %} as,4. es'8 es4.
des8 des4. as8 as2

f bes8 bes bes
c des4. as8 as4. \breathe

    g8 f4. g8 g4.
    bes8 bes4. f'8 f4.
    
    des8 des4. bes8 es4
    des8( bes) f4. c'8 c4. \breathe
    
d8 \key c \major a4. g8 g4.
f8 f4. c'8 c2

a d8 d d
e f4. c8 c4.

    b8 a4. g8 g4.
    d'8 d4. a'8 a4.
    
    f8 f4. d8 b
    b b b a2. \fermata

}

lyricsA = \lyricmode {
%{    Al -- le -- lu -- ja, al -- le -- lu -- ja, al -- le -- lu -- ja, al -- le -- lu -- ja,
    al -- le -- lu -- ja, al -- le -- lu -- ja, al -- le -- lu -- ja, al -- le -- lu -- ja. %}
    Al -- le -- lu -- ja, al -- le -- lu -- ja, al -- le -- lu -- ja, al -- le -- lu -- ja,
    al -- le -- lu -- ja, al -- le -- lu -- ja, al -- le -- lu -- ja, al -- le -- lu -- ja.
    Al -- le -- lu -- ja, al -- le -- lu -- ja, al -- le -- lu -- ja, al -- le -- lu -- ja,
    al -- le -- lu -- ja, al -- le -- lu -- ja, al -- le -- lu -- ja, al -- le -- lu -- ja!
}

lyricsV = \lyricmode {
  \once \override LyricText.self-alignment-X = #LEFT
  "Ja jestem dobrym pas" -- te -- rzem
  \once \override LyricText.self-alignment-X = #LEFT
  "i znam owce moje, a moje mnie" zna -- ją.
}

\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
        \set Staff.instrumentName = "Sopran"
        \sopNotes }
        \new Lyrics \lyricsto "Sop" \lyricsA
      \new Voice = Alt {
        \set Staff.instrumentName = "Alt"
        \altNotes }
        \new Lyrics \lyricsto "Alt" \lyricsA
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenor"
        \clef "treble_8"
        \tenNotes }
        \new Lyrics \lyricsto "Ten" \lyricsA
      \new Voice = Bas {
        \set Staff.instrumentName = "Bas"
        \clef bass
        \basNotes }
        \new Lyrics \lyricsto "Bas" \lyricsA
    >>
  >>

  \layout { }

}

\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop {
        \once \override Staff.TimeSignature #'stencil = ##f
        \cadenzaOn
        a'\breve g'4 g'2 \bar "!" g'\breve g'4 as'2 \bar "||" }
        \new Lyrics \lyricsto "Sop" \lyricsV
      \new Voice = Alt {
        \once \override Staff.TimeSignature #'stencil = ##f
        \cadenzaOn
        e'\breve e'4 e'2 es'\breve des'4 es'2 }
        \new Lyrics \lyricsto "Alt" \lyricsV
      \new Voice = Ten {
        \once \override Staff.TimeSignature #'stencil = ##f
        \cadenzaOn
        \clef "treble_8"
        c'\breve c'4 c'2 bes\breve bes4 c'2 }
        \new Lyrics \lyricsto "Ten" \lyricsV
      \new Voice = Bas {
        \once \override Staff.TimeSignature #'stencil = ##f
        \cadenzaOn
        \clef bass
        a,\breve c4 c2 es\breve es4 as,2 }
        \new Lyrics \lyricsto "Bas" \lyricsV
    >>
  >>

  \layout { }

}