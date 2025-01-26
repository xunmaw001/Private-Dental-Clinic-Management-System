package com.dao;

import com.entity.YaopingoumaiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YaopingoumaiVO;
import com.entity.view.YaopingoumaiView;


/**
 * 药品购买
 * 
 * @author 
 * @email 
 * @date 2023-02-05 21:13:01
 */
public interface YaopingoumaiDao extends BaseMapper<YaopingoumaiEntity> {
	
	List<YaopingoumaiVO> selectListVO(@Param("ew") Wrapper<YaopingoumaiEntity> wrapper);
	
	YaopingoumaiVO selectVO(@Param("ew") Wrapper<YaopingoumaiEntity> wrapper);
	
	List<YaopingoumaiView> selectListView(@Param("ew") Wrapper<YaopingoumaiEntity> wrapper);

	List<YaopingoumaiView> selectListView(Pagination page,@Param("ew") Wrapper<YaopingoumaiEntity> wrapper);
	
	YaopingoumaiView selectView(@Param("ew") Wrapper<YaopingoumaiEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<YaopingoumaiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<YaopingoumaiEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<YaopingoumaiEntity> wrapper);



}
