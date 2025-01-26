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


import com.dao.DiscussbinglixinxiDao;
import com.entity.DiscussbinglixinxiEntity;
import com.service.DiscussbinglixinxiService;
import com.entity.vo.DiscussbinglixinxiVO;
import com.entity.view.DiscussbinglixinxiView;

@Service("discussbinglixinxiService")
public class DiscussbinglixinxiServiceImpl extends ServiceImpl<DiscussbinglixinxiDao, DiscussbinglixinxiEntity> implements DiscussbinglixinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussbinglixinxiEntity> page = this.selectPage(
                new Query<DiscussbinglixinxiEntity>(params).getPage(),
                new EntityWrapper<DiscussbinglixinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussbinglixinxiEntity> wrapper) {
		  Page<DiscussbinglixinxiView> page =new Query<DiscussbinglixinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussbinglixinxiVO> selectListVO(Wrapper<DiscussbinglixinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussbinglixinxiVO selectVO(Wrapper<DiscussbinglixinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussbinglixinxiView> selectListView(Wrapper<DiscussbinglixinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussbinglixinxiView selectView(Wrapper<DiscussbinglixinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
