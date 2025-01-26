package com.dao;

import com.entity.YaopinxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YaopinxinxiVO;
import com.entity.view.YaopinxinxiView;


/**
 * 药品信息
 * 
 * @author 
 * @email 
 * @date 2023-02-05 21:13:01
 */
public interface YaopinxinxiDao extends BaseMapper<YaopinxinxiEntity> {
	
	List<YaopinxinxiVO> selectListVO(@Param("ew") Wrapper<YaopinxinxiEntity> wrapper);
	
	YaopinxinxiVO selectVO(@Param("ew") Wrapper<YaopinxinxiEntity> wrapper);
	
	List<YaopinxinxiView> selectListView(@Param("ew") Wrapper<YaopinxinxiEntity> wrapper);

	List<YaopinxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<YaopinxinxiEntity> wrapper);
	
	YaopinxinxiView selectView(@Param("ew") Wrapper<YaopinxinxiEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<YaopinxinxiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<YaopinxinxiEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<YaopinxinxiEntity> wrapper);



}
