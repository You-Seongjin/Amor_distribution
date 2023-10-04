package com.amor.playingMovie.model;

import java.util.*;

public interface PlayingMovieDAO {
	
	public List<PlayingMovieJoinDTO> playingMovieList(Map map);
	public int getTotalCnt();
	public List<Map> playingMovieAddScreen();
	public List<Map> playingMovieAddMovie();
	public int playingMovieSeat(int theater_idx);
	public int playingMovieAdd(PlayingMovieDTO dto);
	public PlayingMovieJoinDTO playingMovieUpdateList(int idx_u);
	public int playingMovieUpdate(PlayingMovieDTO dto);
	public int playingMovieDelete(int idx);
	public Map movieRunning(int idx_m);
	
	
	
	public PlayingMovieDTO playingMovieContent(int playing_movie_idx);
}
