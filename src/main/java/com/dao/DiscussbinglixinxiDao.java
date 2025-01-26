package com.dao;

import com.entity.DiscussbinglixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussbinglixinxiVO;
import com.entity.view.DiscussbinglixinxiView;


/**
 * 病例信息评论表
 * 
 * @author 
 * @email 
 * @date 2023-02-05 21:13:01
 */
public interface DiscussbinglixinxiDao extends BaseMapper<DiscussbinglixinxiEntity> {
	
	List<DiscussbinglixinxiVO> selectListVO(@Param("ew") Wrapper<DiscussbinglixinxiEntity> wrapper);
	
	DiscussbinglixinxiVO selectVO(@Param("ew") Wrapper<DiscussbinglixinxiEntity> wrapper);
	
	List<DiscussbinglixinxiView> selectListView(@Param("ew") Wrapper<DiscussbinglixinxiEntity> wrapper);

	List<DiscussbinglixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussbinglixinxiEntity> wrapper);
	
	DiscussbinglixinxiView selectView(@Param("ew") Wrapper<DiscussbinglixinxiEntity> wrapper);
	

}
