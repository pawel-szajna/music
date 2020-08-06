\version "2.18.2"
\include "anime_common.ly"

#(define-markup-command (tocentry layout props title src) (markup? markup?)
  "toc entry"
  (interpret-markup layout props
    #{\markup { { \fontsize #1.5 \bold #title } { \fontsize #0.5 #src } } #}))

\markuplist \table-of-contents \pageBreak \markup ""

\pageBreak
\tocItem \markup \tocentry "Akatsuki no Requiem" "Shingeki no Kyojin Season 3-1 ED"
\include "akatsuki_no_requiem.ly"

\pageBreak
\tocItem \markup \tocentry "Shinzou wo Sasageyo!" "Shingeki no Kyojin Season 2 OP"
\include "sasageyo.ly"

\pageBreak
\tocItem \markup \tocentry "A Cruel Angel Thesis" "Neon Genesis Evangelion OP"
\include "cruel_angel_thesis.ly"
