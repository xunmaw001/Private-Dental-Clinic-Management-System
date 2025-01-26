package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 病例信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-02-05 21:13:00
 */
@TableName("binglixinxi")
public class BinglixinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public BinglixinxiEntity() {
		
	}
	
	public BinglixinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 病例编号
	 */
					
	private String binglibianhao;
	
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
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：病例编号
	 */
	public void setBinglibianhao(String binglibianhao) {
		this.binglibianhao = binglibianhao;
	}
	/**
	 * 获取：病例编号
	 */
	public String getBinglibianhao() {
		return binglibianhao;
	}
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
