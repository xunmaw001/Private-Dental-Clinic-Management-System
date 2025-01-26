package com.dao;

import com.entity.HuanzhebingliEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.HuanzhebingliVO;
import com.entity.view.HuanzhebingliView;


/**
 * 患者病历
 * 
 * @author 
 * @email 
 * @date 2023-02-05 21:13:00
 */
public interface HuanzhebingliDao extends BaseMapper<HuanzhebingliEntity> {
	
	List<HuanzhebingliVO> selectListVO(@Param("ew") Wrapper<HuanzhebingliEntity> wrapper);
	
	HuanzhebingliVO selectVO(@Param("ew") Wrapper<HuanzhebingliEntity> wrapper);
	
	List<HuanzhebingliView> selectListView(@Param("ew") Wrapper<HuanzhebingliEntity> wrapper);

	List<HuanzhebingliView> selectListView(Pagination page,@Param("ew") Wrapper<HuanzhebingliEntity> wrapper);
	
	HuanzhebingliView selectView(@Param("ew") Wrapper<HuanzhebingliEntity> wrapper);
	

}
