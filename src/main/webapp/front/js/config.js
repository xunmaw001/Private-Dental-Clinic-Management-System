
var projectName = '基于Java的私人牙科诊所管理系统的设计与实现';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的收藏',
	url: '../storeup/list.jsp?storeupType=1'
},
]


var indexNav = [

{
	name: '医生',
	url: './pages/yisheng/list.jsp'
}, 
{
	name: '病例信息',
	url: './pages/binglixinxi/list.jsp'
}, 
{
	name: '药品信息',
	url: './pages/yaopinxinxi/list.jsp'
}, 

{
	name: '公告信息',
	url: './pages/news/list.jsp'
},
{
	name: '留言反馈',
	url: './pages/messages/list.jsp'
}
]

var adminurl =  "http://localhost:8080/jspmm1dva/index.jsp";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-copy","buttons":["新增","查看","修改","删除","患者比例统计"],"menu":"患者","menuJump":"列表","tableName":"huanzhe"}],"menu":"患者管理"},{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["新增","查看","修改","删除","查看评论"],"menu":"医生","menuJump":"列表","tableName":"yisheng"}],"menu":"医生管理"},{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["查看","修改","删除","查看评论"],"menu":"病例信息","menuJump":"列表","tableName":"binglixinxi"}],"menu":"病例信息管理"},{"child":[{"appFrontIcon":"cuIcon-form","buttons":["查看","修改","删除","每日总额统计","预约金额统计","预约人数统计"],"menu":"预约信息","menuJump":"列表","tableName":"yuyuexinxi"}],"menu":"预约信息管理"},{"child":[{"appFrontIcon":"cuIcon-list","buttons":["查看","修改","删除"],"menu":"患者病历","menuJump":"列表","tableName":"huanzhebingli"}],"menu":"患者病历管理"},{"child":[{"appFrontIcon":"cuIcon-present","buttons":["新增","查看","修改","删除"],"menu":"药品类型","menuJump":"列表","tableName":"yaopinleixing"}],"menu":"药品类型管理"},{"child":[{"appFrontIcon":"cuIcon-similar","buttons":["新增","查看","修改","删除","查看评论","药品分类统计"],"menu":"药品信息","menuJump":"列表","tableName":"yaopinxinxi"}],"menu":"药品信息管理"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看","修改","删除","药品销量统计"],"menu":"药品购买","menuJump":"列表","tableName":"yaopingoumai"}],"menu":"药品购买管理"},{"child":[{"appFrontIcon":"cuIcon-message","buttons":["查看","回复","删除"],"menu":"留言反馈","tableName":"messages"}],"menu":"留言反馈"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["查看","修改"],"menu":"关于我们","tableName":"aboutus"},{"appFrontIcon":"cuIcon-time","buttons":["查看","修改"],"menu":"系统简介","tableName":"systemintro"},{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"},{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"公告信息","tableName":"news"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","预约"],"menu":"医生列表","menuJump":"列表","tableName":"yisheng"}],"menu":"医生模块"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["查看"],"menu":"病例信息列表","menuJump":"列表","tableName":"binglixinxi"}],"menu":"病例信息模块"},{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["查看","购买"],"menu":"药品信息列表","menuJump":"列表","tableName":"yaopinxinxi"}],"menu":"药品信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-form","buttons":["查看","删除","支付"],"menu":"预约信息","menuJump":"列表","tableName":"yuyuexinxi"}],"menu":"预约信息管理"},{"child":[{"appFrontIcon":"cuIcon-list","buttons":["查看"],"menu":"患者病历","menuJump":"列表","tableName":"huanzhebingli"}],"menu":"患者病历管理"},{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["查看","删除","支付"],"menu":"药品购买","menuJump":"列表","tableName":"yaopingoumai"}],"menu":"药品购买管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","预约"],"menu":"医生列表","menuJump":"列表","tableName":"yisheng"}],"menu":"医生模块"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["查看"],"menu":"病例信息列表","menuJump":"列表","tableName":"binglixinxi"}],"menu":"病例信息模块"},{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["查看","购买"],"menu":"药品信息列表","menuJump":"列表","tableName":"yaopinxinxi"}],"menu":"药品信息模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"患者","tableName":"huanzhe"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-newshot","buttons":["新增","查看","修改","删除","查看评论"],"menu":"病例信息","menuJump":"列表","tableName":"binglixinxi"}],"menu":"病例信息管理"},{"child":[{"appFrontIcon":"cuIcon-form","buttons":["查看","删除","审核","添加病历"],"menu":"预约信息","menuJump":"列表","tableName":"yuyuexinxi"}],"menu":"预约信息管理"},{"child":[{"appFrontIcon":"cuIcon-list","buttons":["查看","修改","删除"],"menu":"患者病历","menuJump":"列表","tableName":"huanzhebingli"}],"menu":"患者病历管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-wenzi","buttons":["查看","预约"],"menu":"医生列表","menuJump":"列表","tableName":"yisheng"}],"menu":"医生模块"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["查看"],"menu":"病例信息列表","menuJump":"列表","tableName":"binglixinxi"}],"menu":"病例信息模块"},{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["查看","购买"],"menu":"药品信息列表","menuJump":"列表","tableName":"yaopinxinxi"}],"menu":"药品信息模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"医生","tableName":"yisheng"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
