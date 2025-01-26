package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussbinglixinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussbinglixinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussbinglixinxiView;


/**
 * 病例信息评论表
 *
 * @author 
 * @email 
 * @date 2023-02-05 21:13:01
 */
public interface DiscussbinglixinxiService extends IService<DiscussbinglixinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussbinglixinxiVO> selectListVO(Wrapper<DiscussbinglixinxiEntity> wrapper);
   	
   	DiscussbinglixinxiVO selectVO(@Param("ew") Wrapper<DiscussbinglixinxiEntity> wrapper);
   	
   	List<DiscussbinglixinxiView> selectListView(Wrapper<DiscussbinglixinxiEntity> wrapper);
   	
   	DiscussbinglixinxiView selectView(@Param("ew") Wrapper<DiscussbinglixinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussbinglixinxiEntity> wrapper);
   	

}

