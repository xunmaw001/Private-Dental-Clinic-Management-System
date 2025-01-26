package com.entity.model;

import com.entity.BinglixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 病例信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-02-05 21:13:00
 */
public class BinglixinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 病例名称
	 */
	
	private String binglimingcheng;
		
	/**
	 * 病例类型
	 */
	
	private String binglileixing;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 病例视频
	 */
	
	private String binglishipin;
		
	/**
	 * 病例讲解
	 */
	
	private String binglijiangjie;
		
	/**
	 * 发布时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date fabushijian;
		
	/**
	 * 用户id
	 */
	
	private Long userid;
				
	
	/**
	 * 设置：病例名称
	 */
	 
	public void setBinglimingcheng(String binglimingcheng) {
		this.binglimingcheng = binglimingcheng;
	}
	
	/**
	 * 获取：病例名称
	 */
	public String getBinglimingcheng() {
		return binglimingcheng;
	}
				
	
	/**
	 * 设置：病例类型
	 */
	 
	public void setBinglileixing(String binglileixing) {
		this.binglileixing = binglileixing;
	}
	
	/**
	 * 获取：病例类型
	 */
	public String getBinglileixing() {
		return binglileixing;
	}
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：病例视频
	 */
	 
	public void setBinglishipin(String binglishipin) {
		this.binglishipin = binglishipin;
	}
	
	/**
	 * 获取：病例视频
	 */
	public String getBinglishipin() {
		return binglishipin;
	}
				
	
	/**
	 * 设置：病例讲解
	 */
	 
	public void setBinglijiangjie(String binglijiangjie) {
		this.binglijiangjie = binglijiangjie;
	}
	
	/**
	 * 获取：病例讲解
	 */
	public String getBinglijiangjie() {
		return binglijiangjie;
	}
				
	
	/**
	 * 设置：发布时间
	 */
	 
	public void setFabushijian(Date fabushijian) {
		this.fabushijian = fabushijian;
	}
	
	/**
	 * 获取：发布时间
	 */
	public Date getFabushijian() {
		return fabushijian;
	}
				
	
	/**
	 * 设置：用户id
	 */
	 
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	
	/**
	 * 获取：用户id
	 */
	public Long getUserid() {
		return userid;
	}
			
}
