\version "2.18.2"

\include "../common.ly"

\header {
  title = "Idzie zima"
}

sopNotes = \relative c'' {

\autoBeamOff
\key f \dorian

\time 6/8
\tempo 8 = 200

  r8 as as bes4 g8	% ktoś pogasił
  r8 es g f4 g8		% wszystkie światła,
  
  r8 as as g4 es8	% świat się ugiął
  d4 d8 c4 bes8		% od zamieci
  
  r8 as' as bes4 g8	% i pomimo
  r8 es g f4 g8		% wielkich chęci

  as4 g8 f4 es8		% nie mam dobrych
  es2.			% wie-
  f4.~f4 r8		% ści
  
  \bar "||"

    c'4 bes8 g4 es8	  % Chciałoby się
    es8.[( f16 g8)] f4.	  % uciec
    r8 c' bes g es f	  % nie przed wszystkim się
    f4. r8 f g		  % da, idzie
    
    as4.( es4 d8)	  % zi-
    d4.~d4 r8		  % ma,
    as'4.( es'4 d8)~	  % a~a~a
    d4.~d4 r8
    
  \bar "||"
  
  r8 as as bes4 g8	% wiem, że nigdy
  r8 es g f4 g8		% nie jest łatwa
  
  r8 as as g4 es8	% niesie ciemny
  d4 d8 c4 bes8		% dzień przy sobie
  
  r8 as' as bes4 g8	% nieruchome
  r8 es g f4 g8		% myśli w głowie

  as4 g8 f4 es8		% żywe są o
  es2.			% to-
  f4.( bes4.		% bie
  
  as) bes,8( c des
  c4.) d8( bes' g
  es4.) d8( g d
  c4.) c4 bes8
  
  r8 as' as bes4 g8	% znowu krótsze
  r8 es g f4 g8		% będą noce
  
  as4 g8 f4 es8		% zobaczymy
  es2.			% słoń-
  f4.~f4 r8		% ce
  
  \bar "||"

    c'4 bes8 g4 es8	  % chciałoby się
    es8.[( f16 g8)] f4.	  % uciec
    r8 c' bes g es f	  % nie przed wszystkim się
    f4.~f4 r8		  % da
    
    c'4 bes8 g4 es8	  % chciałoby się
    es8.[( f16 g8)] f4.	  %{uciec %} \pageBreak
    r8 c' bes g es f	  % nie przed wszystkim się
    f4. r8 f g		  % da, idzie
    
    as4.( es4 d8)	  % zi-
    d4.~d4 r8		  % ma
    as'4.( es'4 d8)~	  % aaa,
    d4. r8 f,8 g		  % idzie
    as4.( es4 d8)	  % zi-
    d4.~d4 r8		  % ma
    as'4.( es'4 d8)~	  % aaa,
    d4.~d8( es d)
    
  \bar "||"
  
  c4.( bes)		% nie
  f~f4 r8		% ma
  
  c'4. bes4 g8		% takiej na-
  g4. f4 r8		% dziei
  
  c'4.( bes)		% któ-
  f~f4 r8		% ra
  
  c'4. bes4 g8		% jeszcze coś
  g4. f8 f g		% zmieni, idzie
  
  
  \bar "||"
  
    as4.( es4 d8)	  % zi-
    d4.~d4 r8		  % ma
    as'4.( es'4 d8)~	  % aaa
    d4.~d4 r8 \pageBreak
    
    c4 bes8 g4 es8	  % chciałoby się
    es8.[( f16 g8)] f4.	  % uciec
    r8 c' bes g es f	  % nie przed wszystkim się
    f4.~f4 r8		  % da
    
    c'4 bes8 g4 es8	  % chciałoby się
    es8.[( f16 g8)] f8 f f	  % uciec, ale
    r8 c' bes g es f	  % nie przed wszystkim się
    f4. r8 f g		  % da, idzie
    
    as4.( es4 d8)	  % zi-
    d4.~d4 r8		  % ma
    as'4.( es'4 d8)~	  % aaa
    d4. r8 f, g		  % idzie
    as4.( es4 d8)	  % zi-
    d4.~d4 r8		  % ma
    as'4.( es' d) r	  % aaa
    
  \bar "|."

}

altNotes = \relative c' {

\autoBeamOff
\key f \dorian

  r8 f f f4 f8
  r8 es es f4 es8
  r8 es es es4 es8
  d4 d8 c4 bes8
  
  r8 f' f f4 f8
  r8 es es f4 es8
  es4 es8 d4 c8
  bes2( d4)
  es4.( d4) r8
  
    f4 f8 es4 c8
    bes4( d8) d4.
    r8 f f es es es
    d4. r8 f es
    
    f4( c8)~c4.
    c4.( bes4) r8
    f'4( g8~g4.
    bes)~bes4 r8
    
  r8 f f es4 es8
  r8 d f es4 es8
  r8 es es es4 c8
  bes4 bes8 as4 bes8
  
  c4 f8 es4 es8
  d4 f8 es4 es8
  es4 es8 d4 c8
  bes2( d4)
  es4.( d)
  
  r8 as' as bes4 g8
  r8 es g f4 g8
  r8 as as g4 es8
  d4 d8 c4 bes8
  
  c4 f8 es4 es8
  d4 f8 es4 es8
  c4 c8 c4 c8
  bes2.
  bes4.~bes4 r8
  
    f'4 f8 es4 c8
    bes4( d8) d4.
    r8 f f es es es
    es4.( d4) r8
    
    f4 f8 es4 c8
    bes4( d8) d4.
    r8 f f es es es
    d4. r8 f es
    
    c2.
    c4.( bes4) r8
    f'4( g8~g4.
    bes4.) r8 f es
    
    f4( c8)~c4.
    c( bes4) r8
    f'4( g8~g4. bes2.
    
  as4. g
  f)~f4 r8
  
  as4. es4 es8
  es4. d4 r8
  
  f4.( g)
  f~f4 r8
  
  f4. g4 es8
  es4. d8 d es
  
    c2.
    c4.( bes4) r8
    f'4( g8~g4.
    bes4.)~bes4 r8
    
    f4 f8 es4 c8
    bes4( d8) d4.
    r8 f f es es es
    es4.( d4) r8
    
    f4 f8 es4 c8
    bes4( d8) d d d
    r f f es es es
    d4. r8 f es
    
    c2.
    c4.( bes4) r8
    f'4( g8~g4.
    bes) r8 f es
    f4( c8)~c4.
    c( bes4) r8
    f'4.( g
    bes) r

}

tenNotes = \relative c' {

\autoBeamOff
\key f \dorian

  r8 c c d4 es8
  r8 bes bes d4 c8
  r8 c c c4 c8
  bes4 bes8 bes4 bes8
  
  r8 c c d4 es8
  r8 bes bes d4 c8
  c4 c8 c4 c8
  g2.
  bes4.~bes4 r8
  
    as8.[( bes16)] c8 c4 g8
    g4. bes
    r8 as as c g g
    bes4. r8 bes bes
    
    as4.( g)
    f~f4 r8
    c'4.( es
    f)~f4 r8
    
  c4 c8 c4 c8
  d4 d8 bes4 bes8
  c4 c8 g4 g8
  bes4 bes8 f4 bes8
  
  r8 c c c4 c8
  r8 d d bes4 bes8
  c4 c8 c4 c8
  g2.
  bes
  
  c4 c8 es4 es8
  c4 es8 bes8[( d)] es
  c4 c8 bes4 bes8
  bes4 bes8 f4 f8
  
  r8 c' c c4 c8
  r8 d d bes4 bes8
  es4 es8 es4 es8
  es4.~es8[( f es)]
  d4.~d4 r8
  
    as8.[( bes16)] c8 c4 g8
    g4. bes
    r8 as as c g g
    bes2.
    
    as8.[( bes16)] c8 c4 g8
    g4. bes
    r8 as as c g g
    bes4. r8 bes g
    
    f4.( g)
    f~f4 r8
    c'4.( es
    f) r8 bes, bes
    
    as4.( g)
    f~f4 r8
    c'4.( es
    f2.)
    
  f4.( es)
  d~d4 r8
  
  c4. bes4 bes8
  bes4. bes4 r8
  
  c4.( es)
  d4.~d4 r8
  
  as4. bes4 bes8
  bes4. bes8 bes bes
  
  f4.( g)
  f~f4 r8
  
  c'2.(
  bes4.)~bes4 r8
  
    as8.[( bes16)] c8 c4 g8
    g4. bes
    r8 as as c g g
    bes4.~bes4 r8
    
    as8.[( bes16)] c8 c4 g8
    g4. bes8 bes bes
    r8 as as c g g
    bes4. r8 bes g
    
    f4.( g)
    f~f4 r8
    c'4.( es
    f) r8 bes, bes
    
    as4.( g)
    f~f4 r8
    c'4.( es
    f) r

}

basNotes = \relative c' {

\autoBeamOff
\key f \dorian

  r8 c c bes4 bes8
  r8 bes bes c4 c8
  r8 as as as4 as8
  bes4 bes8 bes4 bes8
  
  r8 c c bes4 bes8
  r8 bes bes c4 c8
  as4 as8 as4 as8
  es4.~es8[( d c)]
  bes4.~bes4 r8
  
    f'4 f8 c4 c8
    es4. bes
    r8 f' f c c c
    bes4. r8 bes' bes
    f4.( g)
    bes~bes4 r8
    f4.( c
    bes)~bes4 r8
    
  f'4 f8 c4 c8
  bes4 bes8 es4 es8
  as,4 as8 c4 c8
  bes4 bes8 bes4 bes8
  
  f'4 f8 c4 c8
  bes4 bes8 es4 es8
  as,4 as8 as4 c8
  es4.~es8[( d c)]
  bes2.
  
  f'4 f8 c4 bes8
  as4 as8 es'4 es8
  as,4 as8 bes4 es8
  bes4 bes8 bes4 bes8
  
  f'4 f8 c4 c8
  bes4 bes8 es4 es8
  as,4 as8 as4 c8
  es2.
  bes4.~bes4 r8
  
    f'4 f8 c4 c8
    es4. bes
    r8 f' f c c c
    bes4.~bes4 r8
    
    f'4 f8 c4 c8
    es4. bes
    r8 f' f c c c
    bes4. r8 bes bes
    
    as4.( c)
    bes~bes4 r8
    f'4.( c
    bes) r8 bes' bes
    
    f4.( g)
    bes~bes4 r8
    f4.( c
    bes2.
    
  f'4. g
  bes)~bes4 r8
  
  f4. g4 es8
  bes4. bes4 r8
  
  as4.( bes)
  bes~bes4 r8
  
  c4. bes4 bes8
  bes4. bes8 bes bes
  
    as4.( c)
    bes~bes4 r8
    f'4.( c
    bes)~bes4 r8
    
    f'4 f8 c4 c8
    es4. bes
    r8 f' f c c c
    bes4.~bes4 r8
    
    f'4 f8 c4 c8
    es4. bes8 bes bes
    r8 f' f c c c
    bes4. r8 bes bes
    
    as4.( c)
    bes~bes4 r8
    f'4.( c
    bes) r8 bes' bes
    
    f4.( g)
    bes~bes4 r8
    f4.( g
    bes) r

}


lyricsS = \lyricmode {
  
  Ktoś po -- ga -- sił wszy -- stkie świa -- tła,
  świat się u -- giął od za -- mie -- ci
  i po -- mi -- mo wiel -- kich chę -- ci,
  nie mam do -- brych wie -- ści.

    Chcia -- ło -- by się u -- ciec,
    nie przed wszy -- stkim się da,

    i -- dzie zi -- ma, aAaAa!

  Wiem, że ni -- gdy nie jest ła -- twa,
  nie -- sie ciem -- ny dzień przy so -- bie,
  nie -- ru -- cho -- me my -- śli "w gło" -- wie
  ży -- we są o to -- bie.
  
  Uuu… _ _ rą -- ce,
  zno -- wu krót -- sze bę -- dą no -- ce,
  zo -- ba -- czy -- my słoń -- ce.

    Chcia -- ło -- by się u -- ciec,
    nie przed wszy -- stkim się da,
    
    chcia -- ło -- by się u -- ciec,
    nie przed wszy -- stkim się da,
    
    i -- dzie zi -- ma, aAaAa,
    i -- dzie zi -- ma, aAaAa!

  Nie ma ta -- kiej na -- dzie -- i,
  któ -- ra je -- szcze coś zmie -- ni,
  
    i -- dzie zi -- ma, aAaAa!
    
    Chcia -- ło -- by się u -- ciec,
    nie przed wszy -- stkim się da,
    
    chcia -- ło -- by się u -- ciec, a -- le
    nie przed wszy -- stkim się da,
    
    i -- dzie zi -- ma, aAaAa,
    i -- dzie zi -- ma, aAaAa.

}

lyricsA = \lyricmode {
  
  Ktoś po -- ga -- sił wszy -- stkie świa -- tła,
  świat się u -- giął od za -- mie -- ci
  i po -- mi -- mo wiel -- kich chę -- ci,
  nie mam do -- brych wie -- ści.

    Chcia -- ło -- by się u -- ciec,
    nie przed wszy -- stkim się da,

    i -- dzie zi -- ma, aAaAa!

  Wiem, że ni -- gdy nie jest ła -- twa,
  nie -- sie ciem -- ny dzień przy so -- bie,
  nie -- ru -- cho -- me my -- śli "w gło" -- wie
  ży -- we są o to -- bie.
  
  By -- le śpie -- wać by -- ło o czym,
  ser -- ce by -- ło wciąż go -- rą -- ce,
  zno -- wu krót -- sze bę -- dą no -- ce,
  zo -- ba -- czy -- my słoń -- ce.

    Chcia -- ło -- by się u -- ciec,
    nie przed wszy -- stkim się da,
    
    chcia -- ło -- by się u -- ciec,
    nie przed wszy -- stkim się da,
    
    i -- dzie zi -- ma, aAaAa,
    i -- dzie zi -- ma, aAaAa!

  ta -- kiej na -- dzie -- i,
  któ -- ra je -- szcze coś zmie -- ni,
  
    i -- dzie zi -- ma, aAaAa!
    
    Chcia -- ło -- by się u -- ciec,
    nie przed wszy -- stkim się da,
    
    chcia -- ło -- by się u -- ciec, a -- le
    nie przed wszy -- stkim się da,
    
    i -- dzie zi -- ma, aAaAa,
    i -- dzie zi -- ma, aAaAa.

}

lyricsT = \lyricmode {
  
  Ktoś po -- ga -- sił wszy -- stkie świa -- tła,
  świat się u -- giął od za -- mie -- ci
  i po -- mi -- mo wiel -- kich chę -- ci,
  nie mam do -- brych wie -- ści.

    Chcia -- ło -- by się u -- ciec,
    nie przed wszy -- stkim się da,

    i -- dzie zi -- ma, aAaAa!

  Wiem, że ni -- gdy nie jest ła -- twa,
  nie -- sie ciem -- ny dzień przy so -- bie,
  nie -- ru -- cho -- me my -- śli "w gło" -- wie
  ży -- we są o to -- bie.
  
  By -- le śpie -- wać by -- ło o czym,
  ser -- ce by -- ło wciąż go -- rą -- ce,
  zno -- wu krót -- sze bę -- dą no -- ce,
  zo -- ba -- czy -- my słoń -- ce.

    Chcia -- ło -- by się u -- ciec,
    nie przed wszy -- stkim się da,
    
    chcia -- ło -- by się u -- ciec,
    nie przed wszy -- stkim się da,
    
    i -- dzie zi -- ma, aAaAa,
    i -- dzie zi -- ma, aAaAa!

  Nie ma ta -- kiej na -- dzie -- i,
  któ -- ra je -- szcze coś zmie -- ni,
  
    i -- dzie zi -- ma, aAaAa!
    
    Chcia -- ło -- by się u -- ciec,
    nie przed wszy -- stkim się da,
    
    chcia -- ło -- by się u -- ciec, a -- le
    nie przed wszy -- stkim się da,
    
    i -- dzie zi -- ma, aAaAa,
    i -- dzie zi -- ma, aAaAa.

}

lyricsB = \lyricmode {

}

\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
        \set Staff.instrumentName = "Sopran"
        \sopNotes }
        \new Lyrics \lyricsto "Sop" \lyricsS
      \new Voice = Alt {
        \set Staff.instrumentName = "Alt"
        \altNotes }
        \new Lyrics \lyricsto "Alt" \lyricsA
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenor"
        \clef "treble_8"
        \tenNotes }
        \new Lyrics \lyricsto "Ten" \lyricsT
      \new Voice = Bas {
        \set Staff.instrumentName = "Bas"
        \clef bass
        \basNotes }
        \new Lyrics \lyricsto "Bas" \lyricsA
    >>
  >>

  \layout { }

}
