% Common definitions
% Based on a choral template by Samuel Speer
% http://samuelspeer.com/blog/2014/choral-scores-vii/

%#(set-global-staff-size 18.5)
#(set-global-staff-size 15.3)

\paper {

  paper-height = 29.7\cm
  paper-width = 21\cm %6.875\in %8.26
  
  top-margin = 0.5\in
  bottom-margin = 0.5\in
  left-margin = 0.55\in
  line-width = 7.16\in
  indent = 0.75\in
  short-indent = 0.115\in
  markup-system-spacing #'padding = #3
  top-system-spacing #'padding = #2.5
  top-markup-spacing #'padding = #5
  last-bottom-spacing #'basic-distance = #7
  last-bottom-spacing #'padding = #2.5
ragged-last-bottom = ##f
 #(define fonts
    (make-pango-font-tree
      "Alegreya"
      "Alegreya"
      "Alegreya"
      (/ staff-height pt 20)))

 %print-first-page-number = ##t
  %first-page-number = 3


  oddHeaderMarkup = \markup \fill-line {
      " "
      \on-the-fly #not-part-first-page \fromproperty #'header:instrument
      \fontsize #0.75
        \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    }
  evenHeaderMarkup = \markup \fill-line {
      \fontsize #0.75
        \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
      \on-the-fly #not-part-first-page \fromproperty #'header:instrument
      " "
    }

  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 3.5)
    \column {
      \fill-line { \fromproperty #'header:dedication }
      \override #'(baseline-skip . 3.5)
      \column {
        \fill-line {
	  \fontsize #8
          \fromproperty #'header:title
        }
        \fill-line {
          \large \bold
          \fromproperty #'header:subtitle
        }
        \fill-line {
          \large \fromproperty #'header:subsubtitle
        }
      }
      \override #'(baseline-skip . 2.2)
      \column {
        \vspace #0.5
        \fill-line {
          \fromproperty #'header:poet
          \fromproperty #'header:composer
        }
        \fill-line {
          \smaller \fromproperty #'header:poetyear
          \smaller \fromproperty #'header:composeryear
        }
      }
    }
  }

}

\header {
  tagline = ##f
}

\layout {

  \context { \Lyrics
    \override LyricText #'font-size = #0.75
    \override LyricHyphen #'minimum-distance = #1
  }

  \context { \Score
    \override BarLine #'hair-thickness = 1.5
    \override BarLine #'thick-thickness = 4.4
    \override BarLine #'kern = 1.75
    \override BarLine #'space-alist #'time-signature =
      #'(extra-space . 0.4)
    \override Beam #'beam-thickness = #0.56
    \override BarNumber #'font-size = #0.1
    \override MetronomeMark #'padding = #2
    \override MetronomeMark #'font-size = #1.5
    \override SystemStartBracket #'padding = #0.55
    markFormatter = #format-mark-box-alphabet
  }

  \context { \Staff
    \override StaffSymbol #'thickness = #0.8
    \override StaffSymbol #'ledger-line-thickness = #'(0.8 . 0.08)
    \override InstrumentName #'font-size = #-0.5
    \numericTimeSignature
  }

  \context { \ChoirStaff
    \override DynamicText #'font-size = #-1.25
    \override DynamicText #'direction = #UP
    \override DynamicLineSpanner #'direction = #UP
    \override StaffGrouper #'staff-staff-spacing
      #'basic-distance = #13.5
    \override StaffGrouper #'staff-staff-spacing
      #'stretchability = #4
    \override StaffGrouper #'staffgroup-staff-spacing
      #'basic-distance = #12.5
    \override StaffGrouper #'staffgroup-staff-spacing
      #'stretchability = #4
  }

  \context { \PianoStaff
    instrumentName = "Organy"
    \override InstrumentName #'baseline-skip = 2.2
  }

}
