sopNotes = \relative c' {

	\cadenzaOn

	% Rorate cæli desuper (introductory)
	s4*7 s4*5 \break

	\repeat volta 3 {
	% Rorate (main chorus)
	r8 fis gis( ais) ais4 \bar "!" % Rorate 
	dis8 cis cis( b) ais ais4( gis) \bar "!" % caeli desuper
	ais8 b ais gis( fis) eis fis( eis) dis4\fermata \bar "||" \pageBreak
	}
	\alternative {
		{ c16 d e f g a b ceses }
	}

}

altNotes = \relative c' {

	\cadenzaOn

	% Rorate cæli desuper (introductory)
	s4*7 s4*5

	% Rorate (main chorus)
	s4*3 s8*9 s4*3
	cis4 ais

	deses cisis e

}

tenNotes = \relative c {

	\cadenzaOn

	% Rorate cæli desuper (introductory)

	fis8\mf gis( ais) ais4 \bar "!" % Rorate
	dis8\< cis cis( b) ais\> ais4( gis)\! \bar "!" % caeli desuper
	ais8 b ais gis\>( fis) eis fis( eis) dis4\p\fermata

	% Rorate (main chorus)
	s4*3 s8*9 s4*3
	b'8( gis) fis4

	fisis

}

basNotes = \relative c {

	\cadenzaOn

	% Rorate cæli desuper (introductory)
	fis8\mf gis( ais) ais4 \bar "!" % Rorate
	dis8\< cis cis( b) ais\> ais4( gis)\! \bar "!" % caeli desuper
	ais8 b ais gis\>( fis) eis fis( eis) dis4\p\fermata
	
	% Rorate (main chorus)
	dis8.( cis16) b4 <<fis cis'>>
	s8*9 s4*3
	<<dis4 b>> <<dis dis,>>

	eis

}


sopLyrics = \lyricmode {

	Ro -- ra -- te cæ -- li de -- su -- per
	et nu -- bes plu -- ant ju -- stum

}

altLyrics = \lyricmode { ju -- stum }

tenLyrics = \lyricmode {

	Ro -- ra -- te cæ -- li de -- su -- per
	et nu -- bes plu -- ant ju -- stum

	%Ro -- ra -- te cæ -- li de -- su -- per
	%{et nu -- bes plu -- ant%} ju -- stum

}

basLyrics = \lyricmode {

	Ro -- ra -- te cæ -- li de -- su -- per
	et nu -- bes plu -- ant ju -- stum

	Ro -- ra -- te %cæ -- li de -- su -- per
	%{et nu -- bes plu -- ant%} ju -- stum

}