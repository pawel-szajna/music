\version "2.18.2"

\include "common.ly"
\include "music.ly"

\paper {
  ragged-right = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  ragged-last = ##f%

}

\header {
  title = "Rorate Cæli"
  composer = "Paweł Szajna (2016)"
}

\markup {
  \vspace #2
  \fill-line {
    \hspace #1
    \column {
      \line { Nie bądź zagniewany, Panie, nie pamiętaj naszych grzechów }
      \line { Oto miasto Świętego opuszczone, Syjon stał się pustkowiem, }
      \line { Jerozolima wyludniona }
      \line { Świątynia Twoja i dom chwały Twojej, }
      \line { gdzie wielbili Cię nasi ojcowie. }
      \vspace #1
      \line { Spójrz, Panie, na udrękę twego ludu }
      \line { I poślij tego, którego masz posłać }
      \line { Ześlij Baranka, Władcę ziemi, }
      \line { ze skały pustyni do góry Córy Syjonu }
      \line { By on sam zdjął z nas jarzmo niewoli }
    }
    \hspace #2
    \column {
      \line { Zgrzeszyliśmy i staliśmy się jak nieczysty }
      \line { I opadliśmy wszyscy niczym zwiędłe liście }
      \line { A nieprawości nasze jak wiatr nas rozniosły }
      \line { Zakryłeś przed nami swą twarz }
      \line { I wydałeś na pastwę naszych grzechów }
      \vspace #1
      \line { Pocieszcie się, pocieszcie się, ludu mój }
      \line { Wkrótce nadejdzie twoje zbawienie }
      \line { Czy dlatego tracisz ducha, że odnowiła się twoja boleść? }
      \line { Ocalę cię, nie bój się, Jam jest bowiem Pan, }
      \line { Bóg twój, Święty Izraela, twój Odkupiciel }
    }
    \hspace #1
  }
}

\score {
  <<
    \new ChoirStaff <<
      \new Voice = Sop { 
        \set Staff.instrumentName = "Soprany"
        \tempo "Lento"
        \time 4/4
        \key dis \minor
        \sopNotes }
        \new Lyrics \lyricsto "Sop" \sopLyrics
      \new Voice = Alt {
        \set Staff.instrumentName = "Alty"
        \key dis \minor
        \altNotes }
        \new Lyrics \lyricsto "Alt" \altLyrics
      \new Voice = Ten {
        \set Staff.instrumentName = "Tenory"
        \clef "treble_8"
        \key dis \minor
        \tenNotes }
        \new Lyrics \lyricsto "Ten" \tenLyrics
      \new Voice = Bas {
        \set Staff.instrumentName = "Basy"
        \clef bass
        \key dis \minor
        \basNotes }
        \new Lyrics \lyricsto "Bas" \basLyrics
    >>
  >>

  \layout { }
  %\midi { }

}