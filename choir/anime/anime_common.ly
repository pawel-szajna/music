#(set-global-staff-size 15.5)

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
    
  tocTitleMarkup = \markup \column {
    \vspace #2.5
    \fill-line { \fontsize #8 "Table of Contents" }
    \vspace #4
  }

  tocItemMarkup = \markup \column { \fontsize #2 \fill-with-pattern #1 #RIGHT .
    \fromproperty #'toc:text \fromproperty #'toc:page
    \vspace #0.5 }

  scoreTitleMarkup = \markup {
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
%        \vspace #0.25
%        \fill-line {
%          \fontsize #1.7 \fromproperty #'header:opus
%          \fontsize #1.7 \fromproperty #'header:arranger
%        }
        \vspace #0.5
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
  print-all-headers = ##t
}
