-- phpMyAdmin SQL Dump
-- version 2.11.2.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2019 年 07 月 07 日 07:21
-- 服务器版本: 5.0.45
-- PHP 版本: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- 数据库: `bdm244113699_db`
--
CREATE DATABASE `bdm244113699_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bdm244113699_db`;

-- --------------------------------------------------------

--
-- 表的结构 `admins`
--

CREATE TABLE `admins` (
  `id_admin` int(11) NOT NULL auto_increment,
  `name_admin` varchar(200) character set utf8 default NULL,
  `pwd_admin` varchar(200) default NULL,
  PRIMARY KEY  (`id_admin`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=2 ;

--
-- 导出表中的数据 `admins`
--

INSERT INTO `admins` (`id_admin`, `name_admin`, `pwd_admin`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- 表的结构 `applyaddr`
--

CREATE TABLE `applyaddr` (
  `id_aa` int(11) NOT NULL auto_increment,
  `name_aa` varchar(200) character set utf8 default NULL,
  `addr_aa` varchar(300) character set utf8 default NULL,
  `tel_aa` varchar(200) default NULL,
  `path_aa` varchar(400) default NULL,
  PRIMARY KEY  (`id_aa`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=7 ;

--
-- 导出表中的数据 `applyaddr`
--

INSERT INTO `applyaddr` (`id_aa`, `name_aa`, `addr_aa`, `tel_aa`, `path_aa`) VALUES
(1, '徐庄联合储运场', '河北省秦皇岛市海港区徐庄联合储运场', '0335-3301222', '乘25路，35路到徐庄路口下'),
(2, '秦皇岛妇幼医院对过', '秦皇岛妇幼医院对过腾润驾培报名处', '13556548545', '成36路、6路妇幼医院下车'),
(3, '秦皇岛市东方明珠城', '秦皇岛市海港区，建设大街东方明珠城', '13733570677', '乘公交25路，30路下车，东行500米'),
(4, '西港路红卫里报名处', '秦皇岛市海港区西港路红卫里23号报名处', '0335-56425546', '乘车路线：成18路、34路到红卫里下车');

-- --------------------------------------------------------

--
-- 表的结构 `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(11) NOT NULL auto_increment,
  `path_banner` varchar(100) default NULL,
  `mark_banner` int(11) default '0',
  PRIMARY KEY  (`id_banner`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=5 ;

--
-- 导出表中的数据 `banner`
--

INSERT INTO `banner` (`id_banner`, `path_banner`, `mark_banner`) VALUES
(1, 'updatepic/banner/1510882219.jpg', 0),
(2, 'updatepic/banner/1510882233.jpg', 0),
(3, 'updatepic/banner/1510882249.jpg', 0),
(4, 'updatepic/banner/1510882257.jpg', 0);

-- --------------------------------------------------------

--
-- 表的结构 `coaches`
--

CREATE TABLE `coaches` (
  `id_coach` int(11) NOT NULL auto_increment,
  `name_coach` varchar(100) character set utf8 default NULL,
  `dage_coach` varchar(20) default NULL,
  `tage_coach` varchar(20) default NULL,
  `type_coach` varchar(100) character set utf8 default NULL,
  `honor_coach` varchar(200) character set utf8 default NULL,
  `evaluate_coach` int(11) default NULL,
  `path_coach` varchar(100) default NULL,
  PRIMARY KEY  (`id_coach`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=8 ;

--
-- 导出表中的数据 `coaches`
--

INSERT INTO `coaches` (`id_coach`, `name_coach`, `dage_coach`, `tage_coach`, `type_coach`, `honor_coach`, `evaluate_coach`, `path_coach`) VALUES
(3, '张3丰', '10/01/2007', '10/06/2015', 'C1桑塔纳', '场内冠军', 5, 'updatepic/coaches/1510539994.jpg'),
(2, '郭富城', '10/02/2008', '10/05/2016', 'C2皮卡', '场内冠军 ', 5, 'updatepic/coaches/1510540038.jpg'),
(4, '李小兰', '11/01/2015', '11/28/2017', 'C1场内', '场内冠军', 5, 'updatepic/coaches/1510539947.jpg'),
(5, '李宁', '11/01/2015', '11/01/2017', 'C3场外', '场外冠军', 4, 'updatepic/coaches/1510539902.jpg'),
(6, '富长顺', '10/07/2013', '11/12/2013', 'C1', '金牌教练', 5, 'updatepic/coaches/1510540166.jpg'),
(7, '刘教练', '11/02/2014', '11/10/2015', 'A1', '3连贯', 5, 'updatepic/coaches/1510540309.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE `news` (
  `id_news` int(11) NOT NULL auto_increment,
  `title_news` varchar(200) character set utf8 default NULL,
  `info_news` text character set utf8,
  `time_news` varchar(20) default NULL,
  `type_news` int(11) default '0',
  PRIMARY KEY  (`id_news`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=12 ;

--
-- 导出表中的数据 `news`
--

INSERT INTO `news` (`id_news`, `title_news`, `info_news`, `time_news`, `type_news`) VALUES
(3, '注意事项：前方：场内克敌场外发声 加索尔成马刺定海神针', '<a class="a-tips-Article-QQ" href="http://nba.stats.qq.com/team/?id=spurs" target="_blank">马刺</a><span style="font-family:" font-size:16px;background-color:#ffffff;"="">是一支通过团队赢球的球队，很难见到某名球员获得完美的数据，但是零零散散的得分篮板以及助攻说明这是一支十二个人的团队。球星方面，有</span><a class="a-tips-Article-QQ" href="http://nba.stats.qq.com/player/?id=4896" target="_blank">莱昂纳德</a><span style="font-family:" font-size:16px;background-color:#ffffff;"="">，</span><a class="a-tips-Article-QQ" href="http://nba.stats.qq.com/player/?id=3527" target="_blank">托尼-帕克</a><span style="font-family:" font-size:16px;background-color:#ffffff;"="">，</span><a class="a-tips-Article-QQ" href="http://nba.stats.qq.com/player/?id=3380" target="_blank">吉诺比利</a><span style="font-family:" font-size:16px;background-color:#ffffff;"="">，但是在马刺的阵容中</span><a class="a-tips-Article-QQ" href="hthttp://nba.stats.qq.com/player/?id=3513" target="_blank">保罗-加索尔</a><span style="font-family:" font-size:16px;background-color:#ffffff;"="">依然是球队必不可少的球员之一，这员老将在以稳定著称的马刺队有着决定性的作用。</span><img src="/admin/js/kindeditor/attached/image/20171007/20171007193754_76366.jpg" alt="" />', '2017-10-07 19:37:55', 0),
(2, '注意事项：林明祯单身3年肖想人夫周杰伦 与邹宗翰传绯闻有点晕', '<p style="color:#111111;font-family:simsun;font-size:14px;background-color:#FBFBFF;text-indent:2em;">\r\n	林明祯昨举办EP《#Me》预购签唱会，公司、爸妈都没下禁爱令，她却因为全心投入工作，已单身3年多，林明祯昨大呼“好想谈恋爱”，期许EP预购成绩第一、5月个唱完售，就要“马上交一个男朋友”来慰劳自己。\r\n</p>\r\n<p style="color:#111111;font-family:simsun;font-size:14px;background-color:#FBFBFF;text-indent:2em;">\r\n	谈及理想对象，林明祯说：“外表顺眼就好，能带着我成长，差距10岁以内。”直言心目中的男神是人夫<a class="channel_keylink" href="http://www.shcaoan.com/Special/zhoujielun/" target="_blank">周杰伦</a>。\r\n</p>\r\n<p style="color:#111111;font-family:simsun;font-size:14px;background-color:#FBFBFF;text-indent:2em;">\r\n	林明祯昨穿短裙、露纤腰，脚踩10公分高跟鞋唱跳新歌《Change》，尽管前晚睡饱备战，昨到现场仍紧张地全身发抖。她形容：“我唱到第3句，才脸皮厚一点克服紧张，也做好跌倒的心理准备。”时隔1年半回到西门町宣传，她说：“上次很紧张，这次很期待，好担心没人来，还一直唱着上张专辑的歌。”现场数百名粉丝力挺。\r\n</p>\r\n<img src="/admin/js/kindeditor/attached/image/20171007/20171007193326_64098.jpg" alt="" />', '2017-10-07 19:33:32', 0),
(4, '半年内与13国海军进行联合军演 这支编队不简单', '<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n	（原标题：半年内分别与13国海军进行联合军演，这支编队不简单）\r\n</p>\r\n<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n	?大国海军\r\n</p>\r\n<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n	海军远航访问编队联演联训专题\r\n</p>\r\n<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n	2017年4月23日，由海军导弹驱逐舰长春舰、导弹护卫舰荆州舰和综合补给舰巢湖舰组成的远航访问编队从上海黄浦江畔起航。\r\n</p>\r\n<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n	历时半年时间，航迹遍布两大洋，穿越26条国际海峡水道，分别与十几个国家进行了联合军事演习和训练。\r\n</p>\r\n<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n	用31419多海里的航迹书写了大国海军的波澜壮阔。\r\n</p>\r\n<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n	远航访问编队联演联训全纪录\r\n</p>\r\n<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n	[亮点一]\r\n</p>\r\n<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n	联演国家多，海域广\r\n</p>\r\n<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n	<img src="/admin/js/kindeditor/attached/image/20171008/20171008204855_14400.jpeg" alt="" />\r\n</p>\r\n<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n	<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n		海军远航访问编队先后与缅甸、孟加拉国、斯里兰卡、巴基斯坦、伊朗、阿曼、意大利、希腊、吉布提、坦桑尼亚、文莱、柬埔寨、泰国等亚非欧三大洲13国海军共21艘舰艇、5架舰载直升机、1架反潜巡逻机和3个岸基观通站举行海上联合演习，演习海域遍布太平洋、印度洋、地中海、孟加拉湾、阿拉伯海、孟加拉湾、泰国湾等主要海域或海湾。\r\n	</p>\r\n	<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n		编队还与缅甸、孟加拉国、斯里兰卡、巴基斯坦、伊朗、吉布提、意大利、希腊、沙特、坦桑尼亚、马尔代夫、印度尼西亚、文莱、柬埔寨、泰国等15国海军开展了多批次的专业交流，组织参观见学50余次，充分展示了自信、友好、开放、务实的大国海军形象\r\n	</p>\r\n</p>', '2017-10-08 20:49:13', 0),
(5, '未来几年农民工不这么做 必将被城市抛弃', '<p>\r\n	<span style="color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;">未来几年农民工不这么做 必将被城市抛弃。近年来大量的农民离开农村，背井离乡外出打工挣钱，这几年外出打工不在那么容易，挣钱没有过去快。以前，只要好好干活，多少都能挣到钱。但最近这几年，细心的农民会发现，挣钱不是那么容易了，而且心里上的压力比以前更大了。</span>\r\n</p>\r\n<p>\r\n	<span style="color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;"><img src="/admin/js/kindeditor/attached/image/20171008/20171008205048_95297.jpeg" alt="" /><br />\r\n</span>\r\n</p>\r\n<p>\r\n	<span style="color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;">\r\n	<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n		国家大力推动“互联网+”、大众创业万众创新，日益吸引农民工，大学生加入创业行列。依靠结构转型大框架下，不断提升服务业在经济中占比，促进服务业吸纳更多劳动力。\r\n	</p>\r\n	<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n		目前仅在淘宝和天猫平台上，就提供了上千万人就业。\r\n	</p>\r\n	<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n		可互联网+与农民工差距过大，农民工知识有限，对互联网操作异常陌生，让农民工从事互联网+怕是水中月镜中花．但农民工可以快递产业，实现服务性质的转换。\r\n	</p>\r\n	<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n		<img src="/admin/js/kindeditor/attached/image/20171008/20171008205215_75154.jpeg" alt="" />\r\n	</p>\r\n	<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n		未来几年农民工不这么做 必将被城市抛弃\r\n	</p>\r\n	<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n		第一：岗位需求量变少\r\n	</p>\r\n	<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n		现在大部分一二线城市发展接近饱和了，再加上一些企业使用机器人操作重复工序的岗位，，多种原因导致企业对农民工需求量变少，导致对普通农民工来说，压力巨大。\r\n	</p>\r\n	<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n		第二：工厂不景气，岗位需求不多\r\n	</p>\r\n	<p style="font-size:16px;color:#333333;text-align:justify;font-family:arial;background-color:#FFFFFF;">\r\n		中国被称之为世界工厂，是以前我国人工成本较低，在现在一些企业由于订单不多，所以导致企业面临倒闭，为了降低成本，缩小开支，一些企业开始压缩员工岗位，再加上现在一些企业对重复工作岗位使用机器人，同样也减少不少员工工资。\r\n	</p>\r\n	<p>\r\n		<span style="color:#333333;font-family:arial;font-size:16px;background-color:#FFFFFF;"><br />\r\n</span>\r\n	</p>\r\n<br />\r\n</span>\r\n</p>', '2017-10-08 20:52:17', 0),
(6, '赛道泳游池', '<p>\r\n	<span style="font-size:16px;"> 大邱大学旅游管理专业外籍教授陈涵说，地处“萨德”部署地的大邱人对中国游客访韩变天深有感触，大邱以前办炸鸡啤酒节，还有青岛方面的捧场，今年则少了中国人帮衬。她对明年平昌冬奥会能否吸引足够的中国观众也感到十分忧虑。今年5月曾特意到平昌冬奥会举办地车站实地调研的她发现，标识牌缺失和内容错误比比皆是，有的标识挂在柱子上，令游客会误以为是广告。</span>\r\n</p>\r\n<p align="center">\r\n	<span style="font-size:16px;"><img src="/admin/js/kindeditor/attached/image/20171115/20171115105101_62354.jpg" alt="" /><br />\r\n</span> \r\n</p>\r\n<p style="text-align:center;">\r\n	<br />\r\n</p>', '2017-10-10 11:32:04', 1),
(7, '健身房', '<p>\r\n	<span style="font-size:16px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 大邱大学旅游管理专业外籍教授陈涵说，地处“萨德”部署地的大邱人对中国游客访韩变天深有感触，大邱以前办炸鸡啤酒节，还有青岛方面的捧场，今年则少了中国人帮衬。她对明年平昌冬奥会能否吸引足够的中国观众也感到十分忧虑。今年5月曾特意到平昌冬奥会举办地车站实地调研的她发现，标识牌缺失和内容错误比比皆是，有的标识挂在柱子上，令游客会误以为是广告。</span>\r\n</p>\r\n<p style="text-align:center;">\r\n	<img src="/admin/js/kindeditor/attached/image/20171010/20171010113300_24892.jpg" alt="" /> \r\n</p>\r\n<p style="text-align:center;">\r\n	健身房\r\n</p>\r\n<p style="text-align:center;">\r\n	<img src="/admin/js/kindeditor/attached/image/20171010/20171010113322_54888.jpg" alt="" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '2017-10-10 11:33:24', 1),
(9, '11月1日起，汽车年检费用将翻一倍，年检的重点是收费还是安全？', '<span style="font-size:16px;"> 走过猴年，就该是鸡年了，但新年里你是否拿到驾照了吗？还没有拿到驾驶证，那你是否知道今年驾驶证考试规则改变了呢？从2016年10月分开始，考驾照的方式就不懂了，改革了不少。春节刚过，调整了新靠驾照的考生年龄范围：</span><br />\r\n<p>\r\n	<img src="http://www.tengrunjiaxiao.com/admin/js/kindeditor/attached/image/20171106/20171106093611_38925.jpg" alt="" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style="font-size:16px;"> 汽车年检新规定出台后，对逾期未年检的车主处罚力度更大了，如果车主超期4个月以上没有年检，那么你的驾照就会被吊销，驾照被吊销还是非常严重的，这就意味着你暂时不能开车了！</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:16px;"> 而且从11月1日起，汽车年检的费用将增长一倍，因为很多未收费的项目都会开始收费，而且要想年检必须先把保险证明交上去，否则就不能参加年检！</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:16px;"> 很多车主认为，年检其实根本无法真正的检测出汽车的问题，无法真正的提升汽车安全性，每年的年检其实就是为了得到那张检查合格证，走走流程罢了！</span> \r\n</p>\r\n<p>\r\n	<span style="font-size:16px;"> 小编认为，如果真的想消除汽车安全隐患，那就彻彻底底对汽车进行一次检查，而不是走流程！对于汽车年检你怎么看？留言讨论吧！</span> \r\n</p>\r\n<img src="/admin/js/kindeditor/attached/image/20171106/20171106092946_31015.jpg" alt="" /> \r\n<p>\r\n	<br />\r\n</p>', '2017-10-28 12:59:27', 0),
(10, '教练车', '缝纫工挺好喝', '2017-11-15 10:47:38', 1);

-- --------------------------------------------------------

--
-- 表的结构 `schoolpics`
--

CREATE TABLE `schoolpics` (
  `id_sp` int(11) NOT NULL auto_increment,
  `path_sp` varchar(100) default NULL,
  `type_sp` int(11) default '0',
  PRIMARY KEY  (`id_sp`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=20 ;

--
-- 导出表中的数据 `schoolpics`
--

INSERT INTO `schoolpics` (`id_sp`, `path_sp`, `type_sp`) VALUES
(3, 'updatepic/school/1510733388.jpg', 1),
(2, 'updatepic/school/1510733225.jpg', 0),
(4, 'updatepic/school/1509933039.jpg', 2),
(5, 'updatepic/school/1510733458.jpg', 1),
(6, 'updatepic/school/1510733428.jpg', 1),
(7, 'updatepic/school/1510733817.jpg', 0),
(8, 'updatepic/school/1510733259.jpg', 0),
(9, 'updatepic/school/1510388553.jpg', 2),
(10, 'updatepic/school/1510733625.jpg', 2),
(11, 'updatepic/school/1510733324.jpg', 0),
(16, 'updatepic/school/1510734085.jpg', 2),
(14, 'updatepic/school/1510733564.jpg', 2),
(15, 'updatepic/school/1509847889.jpg', 1),
(17, 'updatepic/school/1510734143.jpg', 2),
(18, 'updatepic/school/1510734269.jpg', 1),
(19, 'updatepic/school/1510734597.jpg', 1);

-- --------------------------------------------------------

--
-- 表的结构 `teaandstu`
--

CREATE TABLE `teaandstu` (
  `id_ts` int(11) NOT NULL auto_increment,
  `name_ts` varchar(200) character set utf8 default NULL,
  `tel_ts` char(20) default NULL,
  `status_ts` int(11) default '0',
  `type_ts` int(11) default '0',
  `time_ts` varchar(200) default NULL,
  PRIMARY KEY  (`id_ts`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=21 ;

--
-- 导出表中的数据 `teaandstu`
--

INSERT INTO `teaandstu` (`id_ts`, `name_ts`, `tel_ts`, `status_ts`, `type_ts`, `time_ts`) VALUES
(1, '张三丰', '136978373839', 1, 1, '2017-10-18 11:22:29'),
(2, '李强', '136978373839', 1, 0, '2017-10-18 11:22:39'),
(3, '张梅', '136978373839', 0, 1, '2017-10-18 11:23:19'),
(4, '小花', '136978373839', 0, 0, '2017-10-18 11:23:25'),
(5, '十九大', '136978373839', 0, 0, '2017-10-18 11:23:31'),
(6, '贾玲', '136978373839', 0, 1, '2017-10-18 11:23:38'),
(11, '尔尔', '13933560694', 1, 1, '2017-11-02 19:12:46'),
(12, '让他', '1389087845', 0, 1, '2017-11-02 19:14:50'),
(9, '李小璐', '1235642235', 1, 1, '2017-11-02 16:37:28'),
(13, '伟大', '1389087845', 0, 1, '2017-11-02 19:15:29'),
(14, '千万', '13933567890', 0, 1, '2017-11-02 19:17:35'),
(15, '呵呵', '13584732562', 0, 1, '2017-11-02 19:20:30'),
(16, 'opop', '13890878459', 0, 0, '2017-11-02 19:26:59'),
(17, '刘刘', '15233538975', 0, 0, '2017-11-02 20:52:15'),
(18, '343434', '13890878455', 1, 0, '2017-11-03 13:33:53'),
(19, 'aaa', '13933567890', 1, 1, '2017-11-04 17:54:20');
