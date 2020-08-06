\version "2.18.2"

\include "../common.ly"


\paper {

  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 3.5)
    \column {
      \fill-line { \fromproperty #'header:dedication }
      \override #'(baseline-skip . 3.5)
      \column {
        \vspace #2
        \fill-line {
	  \fontsize #8
          \fromproperty #'header:title
        }
        \vspace #0.5
        \fill-line {
          \fontsize #6.5 \bold
          \fromproperty #'header:subtitle
        }
        \vspace #0.7
        \fill-line {
          \fontsize #3 \fromproperty #'header:subsubtitle
        }
        \vspace #1
      }
      \override #'(baseline-skip . 2.2)
      \column {
        \vspace #0.5
        \fill-line {
          \fontsize #1.7 \fromproperty #'header:poet
          \fontsize #1.7 \fromproperty #'header:composer
        }
        \fill-line {
          \smaller \fromproperty #'header:poetyear
          \smaller \fromproperty #'header:composeryear
        }
        \vspace #0.25
        \fill-line {
          \fontsize #1.7 \fromproperty #'header:opus
          \fontsize #1.7 \fromproperty #'header:arranger
        }
        \vspace #0.5
      }
    }
  }

}


#(define-markup-command (arrow-at-angle layout props angle-deg length fill)
   (number? number? boolean?)
   (let* (
          (PI-OVER-180 (/ (atan 1 1) 45))
          (degrees->radians (lambda (degrees) (* degrees PI-OVER-180)))
          (angle-rad (degrees->radians angle-deg))
          (target-x (* length (cos angle-rad)))
          (target-y (* length (sin angle-rad))))
     (interpret-markup layout props
                       (markup
                        #:translate (cons (/ target-x 2) (/ target-y 1.5))
                        #:rotate angle-deg
                        #:translate (cons (/ length -2) 0)
                        #:concat (#:draw-line (cons length 0)
                                              #:arrow-head X RIGHT fill)))))

splitStaffBarLineMarkup = \markup \with-dimensions #'(0 . 0) #'(0 . 0) {
  \combine
    \arrow-at-angle #45 #(sqrt 8) ##f
    \arrow-at-angle #-45 #(sqrt 8) ##f
}

splitStaffBarLine = {
  \once \override Staff.BarLine.stencil =
    #(lambda (grob)
       (ly:stencil-combine-at-edge
        (ly:bar-line::print grob)
        X RIGHT
        (grob-interpret-markup grob splitStaffBarLineMarkup)
        0))
  \break
}


#(define-markup-command (arrow-at-angle-b layout props angle-deg length fill)
   (number? number? boolean?)
   (let* (
          (PI-OVER-180 (/ (atan 1 1) 45))
          (degrees->radians (lambda (degrees) (* degrees PI-OVER-180)))
          (angle-rad (degrees->radians angle-deg))
          (target-x (* length (cos angle-rad)))
          (target-y (* length (sin angle-rad))))
     (interpret-markup layout props
                       (markup
                        #:translate (cons (/ target-x 2) (/ target-y -50))
                        #:translate (cons 0 3.3)
                        #:rotate angle-deg
                        #:translate (cons (/ length -2) 0)
                        #:concat (#:draw-line (cons length 0)
                                              #:arrow-head X RIGHT fill)))))


#(define-markup-command (arrow-at-angle-c layout props angle-deg length fill)
   (number? number? boolean?)
   (let* (
          (PI-OVER-180 (/ (atan 1 1) 45))
          (degrees->radians (lambda (degrees) (* degrees PI-OVER-180)))
          (angle-rad (degrees->radians angle-deg))
          (target-x (* length (cos angle-rad)))
          (target-y (* length (sin angle-rad))))
     (interpret-markup layout props
                       (markup
                        #:translate (cons (/ target-x 2) (/ target-y -50))
                        #:translate (cons 0 -3.3)
                        #:rotate angle-deg
                        #:translate (cons (/ length -2) 0)
                        #:concat (#:draw-line (cons length 0)
                                              #:arrow-head X RIGHT fill)))))


joinStaffBarLineMarkup = \markup \with-dimensions #'(0 . 0) #'(0 . 0) {
    \arrow-at-angle-b #45 #(sqrt 8) ##f
}

joinStaffBarLine = {
  \once \override Staff.BarLine.stencil =
    #(lambda (grob)
       (ly:stencil-combine-at-edge
        (ly:bar-line::print grob)
        X RIGHT
        (grob-interpret-markup grob joinStaffBarLineMarkup)
        0))
  \break
}

joinTopStaffBarLineMarkup = \markup \with-dimensions #'(0 . 0) #'(0 . 0) {
    \arrow-at-angle-c #-45 #(sqrt 8) ##f
}

joinTopStaffBarLine = {
  \once \override Staff.BarLine.stencil =
    #(lambda (grob)
       (ly:stencil-combine-at-edge
        (ly:bar-line::print grob)
        X RIGHT
        (grob-interpret-markup grob joinTopStaffBarLineMarkup)
        0))
  \break
}


\paper {
  %ragged-right = ##t
  short-indent = 5\mm
}

global = {
  \key c \minor
}

\header {
  title = "残酷な天使のテーゼ"
  subtitle = "A Cruel Angel's Thesis"
  subsubtitle = "For SSAATB choir" 
  poet = "Neko Oikawa"
  composer = "Hidetoshi Satou"
  arranger = "arr. Pawel Szajna"
}

lyricsSopI = \lyricmode {
  Aaa… _ Aaa… Aaa… Aaa…
  no te -- ze
  ma -- do -- be ka -- ra ya -- ga -- te to -- bi -- ta -- tsu
  Aaa…
  Ko -- no so -- ra wo da -- i -- te ka -- ga -- ya -- ku
  sho -- ne -- n yo shi -- n -- wa ni na -- re!
}

lyricsSopII = \lyricmode {
  Za -- n -- ko -- ku na te -- n -- shi no yo ni
  sho -- ne -- n yo -- shi -- n -- wa ni na -- re

  Aaa… Aaa…
  
  Za -- n -- ko -- ku na te -- n -- shi no te -- ze
  ma -- do -- be ka -- ra ya -- ga -- te to -- bi -- ta -- tsu
  Ho -- to -- ba -- shi -- ru a -- tsu -- i pa -- to -- su de
  o -- mo -- i -- de wo u -- ra -- gi -- ru na -- ra
  Aaa…
  shi -- n -- wa ni na -- re!
}

lyricsSopC = \lyricmode {
  Za -- n -- ko -- ku na te -- n -- shi no yo ni
  sho -- ne -- n yo -- shi -- n -- wa ni na -- re
  
  Mmm… Mmm… Aaa… Aaa…
}


lyricsAltI = \lyricmode {
  Aaa… _
  
  Da -- ke -- do i -- tsu -- ka
  ki -- zu -- ku de -- sho -- u
  so -- no se -- na -- ka ni wa
  Ha -- ru -- ka mi -- ra -- i
  me -- za -- su ta -- me -- no
  ha -- ne -- ga a -- ru -- ko -- to
  
  Za -- n -- ko -- ku na te -- n -- shi no te -- ze
  ma -- do -- be ka -- ra ya -- ga -- te to -- bi -- ta -- tsu
  Aaa… Aaa…
  shi -- n -- wa ni na -- re!
}

lyricsAltII = \lyricmode {
  Aaa… _
  
  Da -- ke -- do i -- tsu -- ka
  ki -- zu -- ku de -- sho -- u
  so -- no se -- na -- ka ni wa
  Ha -- ru -- ka mi -- ra -- i
  me -- za -- su ta -- me -- no
  ha -- ne -- ga a -- ru -- ko -- to
  
  za -- n -- ko -- ku na te -- n -- shi no te -- ze
  ma -- do -- be ka -- ra ya -- ga -- te to -- bi -- ta -- tsu
  Aaa… Aaa…
  shi -- n -- wa ni na -- re!
}

lyricsAltC = \lyricmode {
  Za -- n -- ko -- ku na te -- n -- shi no yo ni
  sho -- ne -- n yo -- shi -- n -- wa ni na -- re
  
  A -- o -- i
  ka -- ze ga i -- ma
  mu -- ne no do -- a wo ta -- ta -- i -- te mo
  wa -- ta -- shi da -- ke wo
  ta -- da mi -- tsu -- me -- te
  ho -- ho -- e -- n -- de -- ru
  a -- na -- ta
  
  So -- t -- to
  fu -- re -- ru mo -- no
  mo -- to -- me -- ru ko -- to ni
  mu -- chu -- u de
  u -- n -- me -- i sa -- e
  ma -- da shi -- ra -- na -- i
  i -- ta -- i -- ke -- na hi -- to -- mi
}


lyricsT = \lyricmode {
  Aaa…
  
  Za -- n -- ko -- ku na te -- n -- shi no yo ni
  sho -- ne -- n yo -- shi -- n -- wa ni na -- re
  
  Mmm… Mmm…

  So -- t -- to
  fu -- re -- ru mo -- no
  mo -- to -- me -- ru ko -- to ni
  mu -- chu -- u de
  u -- n -- me -- i sa -- e
  ma -- da shi -- ra -- na -- i
  i -- ta -- i -- ke -- na hi -- to -- mi
  
  Da -- ke -- do i -- tsu -- ka
  ki -- zu -- ku de -- sho -- u
  so -- no se -- na -- ka ni wa
  Ha -- ru -- ka mi -- ra -- i
  me -- za -- su ta -- me -- no
  ha -- ne -- ga a -- ru -- ko -- to

  za -- n -- ko -- ku na te -- n -- shi no te -- ze
  ma -- do -- be ka -- ra ya -- ga -- te to -- bi -- ta -- tsu
  Aaa…
  Ko -- no so -- ra wo da -- i -- te ka -- ga -- ya -- ku
  sho -- ne -- n yo shi -- n -- wa ni na -- re!
}

lyricsB = \lyricmode {
  _
  Za -- n -- ko -- ku na te -- n -- shi no yo ni
  sho -- ne -- n yo -- shi -- n -- wa ni na -- re
  
  Mmm… Mmm…
  Aaa… Aaa… Aaa… Aaa…
  
  za -- n -- ko -- ku na te -- n -- shi no te -- ze
  ma -- do -- be ka -- ra ya -- ga -- te to -- bi -- ta -- tsu
  Ho -- to -- ba -- shi -- ru a -- tsu -- i pa -- to -- su de
  o -- mo -- i -- de wo u -- ra -- gi -- ru na -- ra
  Ko -- no so -- ra wo da -- i -- te ka -- ga -- ya -- ku
  sho -- ne -- n yo shi -- n -- wa ni na -- re!
}


\score {
  <<
    \new ChoirStaff <<
      \new Voice = isopI { 
        \set Staff.instrumentName = "Soprano I"
        \set Staff.shortInstrumentName = "S I"
        \global
        \tempo "Andante" 4 = 80
        \relative c'' {
          \autoBeamOff
          c1( d2 es2) \breathe
          es( f d es\fermata)
          \joinTopStaffBarLine
          \break
          \bar "||"
          
          s1*12
          % Verse 2
          es,4.( f8 g2
          g as4 bes
          c2 d
          es4. d8 c2)
          
          bes1(
          as2 bes
          c1
          b)
          
          \joinTopStaffBarLine
          
          s1*8
          % Finale
          
          g2( as
          bes4.) as8 g16( f8) g16~g4
          g bes c8. f, es8
          d^\markup{\small{Do {\bold not} take a breath after this measure!}} d c d f16 es8 es16~es8~es16( bes')
          
          c1(
          d2 es~
          es f
          d~d8. c16~c4)
          
          <c, \parenthesize c'>^\markup{\small{The high octave is optional and intended for a solo singer.}}
          <es \parenthesize es'>
          <f \parenthesize f'>8.
          <es \parenthesize es'>
          <f \parenthesize f'>8
          <f \parenthesize f'>
          <f \parenthesize f'>
          <bes \parenthesize bes'>
          <as \parenthesize as'>
          <g \parenthesize g'>16
          <f \parenthesize f'>8 
          <g \parenthesize g'>16~
          <g \parenthesize g'>4
          <g \parenthesize g'>( 
          <bes \parenthesize bes'>)
          <c \parenthesize c'>8.
          <f, \parenthesize f'>
          <es \parenthesize es'>8
          <bes' \parenthesize bes'>
          <bes \parenthesize bes'>
          <g \parenthesize g'>
          <bes \parenthesize bes'>
          <bes \parenthesize bes'>8. 
          <c \parenthesize c'>16~
          <c \parenthesize c'>4
        }
      }
      \new Lyrics \lyricsto "isopI" \lyricsSopI
      
      \new Voice = isopII {
        \set Staff.instrumentName = "Soprano II"
        \set Staff.shortInstrumentName = "S II"
        \global
        \relative c' {
          \autoBeamOff
          
          % Zankoku na tenshi no yo ni
          c4 es f8. es f8
          f f bes as g16( f8) g16~g4\breathe
          
          % Shounen
          g4( bes) c8. f, es8
          bes' bes g bes bes8. c16~c4\fermata
          \joinStaffBarLine
          
          s1*12
          % Verse 2
          es,4.( f8~f2~
          f1
          bes~
          bes2 g)
          
          f1(
          as2 g~
          g es
          d1)
          \joinStaffBarLine

          s1*8
          % Finale
          c4 es f8. es f8
          f f bes as g16( f8) g16~g4
          g bes c8. f, es8
          d d c d f16 es8 es16~es4
          
          c4 es f8. es f8
          f f bes as g16 f8 g16~g4
          g bes c8. f, es8
          bes' bes g bes bes8. c16~c4
          
          c1( d2 es~es c)
          bes8 bes g bes bes8. c16~c4
        }
      }
      \new Lyrics \lyricsto "isopII" \lyricsSopII
      
      \new Voice = csop {
        \set Staff.instrumentName = "Soprano"
        \set Staff.shortInstrumentName = "S"
        \global
        \relative c' {
          s1*4
          \autoBeamOff
          \tempo "Allegro" 4 = 128
          c4 es f8. es f8
          f f bes as g16( f8) g16~g4\breathe
          
          % Shounen
          g4( bes) c8. f, es8
          bes' bes g bes bes8. c16~c4
          
          \pageBreak
          % Verse
          es,1( f g2 as g1)
          bes( c8. bes as8 g2~g d d1)
          \splitStaffBarLine
          
          s1*8
          % Verse 3
          as'1(~as
          g2 f es1)
          as(~as
          bes2 a g1)
          \splitStaffBarLine
        }
      }
      \new Lyrics \lyricsto "csop" \lyricsSopC
      
      \new Voice = ialtI {
        \set Staff.instrumentName = "Alto I"
        \set Staff.shortInstrumentName = "A I"
        \global
        \relative c'' {
          \autoBeamOff
          g2( as bes1)\breathe
          c( bes2 c8. bes16~bes4\fermata)
          \joinTopStaffBarLine
          
          s1*20
          
          % Verse 3
          es,8. es d8 es8. es d8
          f8. f es8 d8. c d8
          es8. es d8 f8. d c8
          bes2 r\break
          es8. es d8 es8. es d8
          f8. f es8 d8. es f8
          g8. as g8 f8. es f8
          g1
          
          % Finale
          
          c,4 d es8. es es8
          d d f f es8. es16~es4
          es es f8. f es8
          d d c d f16 es8 es16~es8( g)
          
          g2( as 
          bes1
          c
          bes2~bes8. g16~g4)
          
          g2( as bes1 c)
          bes8 bes g bes bes8. c16~c4
        }
      }
      \new Lyrics \lyricsto "ialtI" \lyricsAltI
      
      \new Voice = ialtII {
        \set Staff.instrumentName = "Alto II"
        \set Staff.shortInstrumentName = "A II"
        \global
        \relative c' {
          \autoBeamOff
          es2( f~f es)\breathe
          bes'( as bes1\fermata)
          \joinStaffBarLine
          
          s1*20
          % Verse 3
          c,8. c c8 c8. c c8
          c8.  c c8 c8. bes c8
          c8. c c8 c8. c as8
          g2 r
          
          c8. c c8 c8. c c8
          c8. c c8 bes8. c d8
          es8. f f8 c8. es c8
          d2 \breathe
          
          % Finale
          d8.( es f8 \break
          
          c4) c c8. c c8
          c c d d es8. es16~es4
          es4 c c8. c c8
          bes bes d d es16 es8 es16~es( f~f8) \pageBreak
          
          es2( f~
          f es
          bes' as
          g4 f~f8. es16~es4)
          
          es2( f~
          f es
          bes' as)
          bes8 bes g bes bes8. c16~c4
        }
      }
      \new Lyrics \lyricsto "ialtII" \lyricsAltII
      
      \new Voice = calt {
        \set Staff.instrumentName = "Alto"
        \set Staff.shortInstrumentName = "A"
        \global
        \relative c' {
          \autoBeamOff
          s1*4
          
          c4 c c8. c c8
          c c d d es8. es16~es4\breathe
          
          es( c) c8. c c8
          bes bes d d f8. es16~es4
          
          % Verse
          
          r4 es8 bes16 bes~bes8 r r es8
          es8. f bes,8 bes r r bes
          g'8. as g8 f8. es f8
          g8. as g8 c,4 r8 c16 d \break
          es8. es d8 d4 r8 es16 f
          as8. g f8 es4 r8 g
          g8. f e8 f4 c
          c4. d8 d4 r \break
          
          % Verse 2
          
          r4 es8 bes16 bes~bes8 r r es
          es8. f bes,8 bes r r bes
          g'8. as g8 f8. es f8
          g8. as g8 c,4 r8 c16 d \pageBreak
          es8. es d8 d4 r8 es16 f
          as8. g f8 es4 r8 g
          g8. f e8 f8. g as8
          g2 r \break
          
          \splitStaffBarLine
        }
      }
      \new Lyrics \lyricsto "calt" \lyricsAltC
      
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenor"
        \set Staff.shortInstrumentName = "T"
        \clef "treble_8"
        \global
        \relative c'' {
          \autoBeamOff
          s1*2 g2( f g1\fermata)
          
          g,4 g as8. as as8
          bes bes bes bes bes8. bes16~bes4 \breathe
          
          bes( g) as8. as as8
          g g f f g8. g16~g4
          
          % Verse
          
          g1( bes es2 f es1)
          c (c4. es8 f2 d bes b2. as4)
          
          % Verse 2
          r4 bes8 g16 g~g8 r r bes
          bes8. bes f8 f r r bes
          c8. es es8 bes8. bes d8
          es8. es c8 g4 r8 c16 c
          
          d8. c c8 bes4 r8 g16 as
          c8. c c8 bes4 r8 c
          c8. d c8 as8. bes c8
          b2 r
          
          % Verse 3
          as8. as bes8 as8. as bes8
          as8. as as8 g8. g g8
          g8. g bes8 bes8. bes bes8
          f2 r
          
          as8. as bes8 as8. as bes8
          as8. as as8 as8. as as8
          c8. es es8 c8. c c8
          c2 \breathe
          
          % Finale
          b8.( c d8
          
          g,4) g as8. as as8
          bes bes bes bes bes8. bes16~bes4
          bes g as8. as as8
          g g f f g16 g8 g16~g4
          
          c1( bes g2 f
          g4 f~f8. g16~g4)
          
          c, es f8. es f8
          f f bes as g16 f8 g16~g4
          g( bes) c8. f, es8
          bes' bes g bes bes8. c16~c4
        }
      }
      \new Lyrics \lyricsto "Ten" \lyricsT
      
      \new Voice = Bas {
        \set Staff.instrumentName = "Bass"
        \set Staff.shortInstrumentName = "B"
        \clef bass
        \global
        \relative c {
          \once \hide NoteHead c1 s1*3
          \autoBeamOff
          
          c4 bes f8. f f8
          bes bes bes bes es8. es16~es4\breathe
          
          c4( bes) f8. f f8
          g g bes bes bes8. c16~c4
          
          % Verse
          
          es1( d c2 bes as c)
          bes1 (as4. bes8 es2 c bes g2. bes4)
          
          % Verse 2
          es1( d c2 bes as c)
          bes1( as4. bes8 es2 c as g1)
          
          % Verse 3
          as( f2 as4 bes c2 bes es1) \pageBreak
          as,( f2 as4 bes <es, \parenthesize es'>2 <f \parenthesize f'> <g \parenthesize g'>)\breathe
          
          % Finale
          g8.( a b8
          
          c4) bes f8. f f8
          bes bes bes bes es8. es16~es4
          c bes f8. f f8
          g g bes bes es16 es8 es16~es4
          
          c bes f8. f f8
          bes bes bes bes es16 es8 es16~es4
          c bes f8. f f8
          g g bes bes bes8. c16~c4 \break
          
          c bes f8. f f8
          bes bes bes bes es16 es8 es16~es4
          c( bes) f8. f f8
          bes bes g bes bes8. c16~c4 \bar "|."
        }
      }
      \new Lyrics \lyricsto "Bas" \lyricsB
    >>
  >>

  \layout {
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }

}
