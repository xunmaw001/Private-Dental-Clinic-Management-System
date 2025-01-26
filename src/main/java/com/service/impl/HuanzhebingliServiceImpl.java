package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.HuanzhebingliDao;
import com.entity.HuanzhebingliEntity;
import com.service.HuanzhebingliService;
import com.entity.vo.HuanzhebingliVO;
import com.entity.view.HuanzhebingliView;

@Service("huanzhebingliService")
public class HuanzhebingliServiceImpl extends ServiceImpl<HuanzhebingliDao, HuanzhebingliEntity> implements HuanzhebingliService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<HuanzhebingliEntity> page = this.selectPage(
                new Query<HuanzhebingliEntity>(params).getPage(),
                new EntityWrapper<HuanzhebingliEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<HuanzhebingliEntity> wrapper) {
		  Page<HuanzhebingliView> page =new Query<HuanzhebingliView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<HuanzhebingliVO> selectListVO(Wrapper<HuanzhebingliEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public HuanzhebingliVO selectVO(Wrapper<HuanzhebingliEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<HuanzhebingliView> selectListView(Wrapper<HuanzhebingliEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public HuanzhebingliView selectView(Wrapper<HuanzhebingliEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
