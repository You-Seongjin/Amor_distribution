package com.amor.banner.model;

import java.util.*;

public interface BannerDAO {

	public List<BannerDTO> bannerList();
	public int bannerAdd(BannerDTO dto);
	public BannerDTO bannerUpdate1(int banner_idx);
	public int bannerUpdate2(BannerDTO dto);
	public int bannerDelete(int banner_idx);
	
	
}
