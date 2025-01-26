package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.HuanzhebingliEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.HuanzhebingliVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.HuanzhebingliView;


/**
 * 患者病历
 *
 * @author 
 * @email 
 * @date 2023-02-05 21:13:00
 */
public interface HuanzhebingliService extends IService<HuanzhebingliEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<HuanzhebingliVO> selectListVO(Wrapper<HuanzhebingliEntity> wrapper);
   	
   	HuanzhebingliVO selectVO(@Param("ew") Wrapper<HuanzhebingliEntity> wrapper);
   	
   	List<HuanzhebingliView> selectListView(Wrapper<HuanzhebingliEntity> wrapper);
   	
   	HuanzhebingliView selectView(@Param("ew") Wrapper<HuanzhebingliEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<HuanzhebingliEntity> wrapper);
   	

}

