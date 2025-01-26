package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YaopingoumaiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YaopingoumaiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YaopingoumaiView;


/**
 * 药品购买
 *
 * @author 
 * @email 
 * @date 2023-02-05 21:13:01
 */
public interface YaopingoumaiService extends IService<YaopingoumaiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YaopingoumaiVO> selectListVO(Wrapper<YaopingoumaiEntity> wrapper);
   	
   	YaopingoumaiVO selectVO(@Param("ew") Wrapper<YaopingoumaiEntity> wrapper);
   	
   	List<YaopingoumaiView> selectListView(Wrapper<YaopingoumaiEntity> wrapper);
   	
   	YaopingoumaiView selectView(@Param("ew") Wrapper<YaopingoumaiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YaopingoumaiEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<YaopingoumaiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<YaopingoumaiEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<YaopingoumaiEntity> wrapper);



}

